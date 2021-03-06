
<div class="sucuriscan-integrity-diff-utility">
    %%%SUCURI.DiffUtility.Modal%%%

    <script type="text/javascript">
    /* global jQuery */
    /* jshint camelcase: false */
    jQuery(function ($) {
        $('.sucuriscan-integrity-table th .sucuriscan-tooltip').removeClass('sucuriscan-hidden');

        $('.sucuriscan-integrity-table .sucuriscan-integrity-filepath').on('click', function (event) {
            event.preventDefault();

            window.scrollTo(0, 0);
            var filepath = $(this).attr('data-filepath');
            $('.sucuriscan-diff-utility-modal').removeClass('sucuriscan-hidden');
            $('.sucuriscan-diff-utility-modal .sucuriscan-modal-inside').html('Loading...');

            $.post('%%SUCURI.AjaxURL.Dashboard%%', {
                action: 'sucuriscan_ajax',
                sucuriscan_page_nonce: '%%SUCURI.PageNonce%%',
                form_action: 'integrity_diff_utility',
                filepath: filepath,
            }, function (data) {
                $('.sucuriscan-diff-utility-modal .sucuriscan-modal-inside').html(data);
                $('.sucuriscan-diff-content').before('<p>@@SUCURI.DiffUtilityInstructions@@</p>');
            });
        });
    });
    </script>
</div>
