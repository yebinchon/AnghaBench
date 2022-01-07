
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_expose_event_t ;
typedef int xcb_connection_t ;
struct TYPE_5__ {int width; scalar_t__ height; } ;


 scalar_t__ BAR_BORDER ;
 int BTN_BORDER ;
 scalar_t__ BTN_GAP ;
 int BTN_PADDING ;
 scalar_t__ CLOSE_BTN_GAP ;
 int MSG_PADDING ;
 TYPE_1__ bar ;
 int btn_close ;
 scalar_t__ button_draw (int *,int) ;
 int buttoncnt ;
 int * buttons ;
 int color_background ;
 int color_border_bottom ;
 int color_text ;
 int draw_util_clear_surface (TYPE_1__*,int ) ;
 int draw_util_rectangle (TYPE_1__*,int ,int ,scalar_t__,int,scalar_t__) ;
 int draw_util_text (int ,TYPE_1__*,int ,int ,int,int,int) ;
 int prompt ;
 int xcb_flush (int *) ;

__attribute__((used)) static int handle_expose(xcb_connection_t *conn, xcb_expose_event_t *event) {

    draw_util_clear_surface(&bar, color_background);

    draw_util_text(prompt, &bar, color_text, color_background,
                   MSG_PADDING, MSG_PADDING,
                   bar.width - 2 * MSG_PADDING);

    int position = bar.width - (MSG_PADDING - BTN_BORDER - BTN_PADDING);


    position -= button_draw(&btn_close, position);
    position -= CLOSE_BTN_GAP;


    for (int i = 0; i < buttoncnt; i++) {
        position -= BTN_GAP;
        position -= button_draw(&buttons[i], position);
    }


    draw_util_rectangle(&bar, color_border_bottom, 0, bar.height - BAR_BORDER, bar.width, BAR_BORDER);

    xcb_flush(conn);
    return 1;
}
