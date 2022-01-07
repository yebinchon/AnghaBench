
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ event_x; scalar_t__ event_y; } ;
typedef TYPE_1__ xcb_button_press_event_t ;
struct resize_window_callback_params {int member_0; int const member_1; } ;
typedef scalar_t__ int16_t ;
typedef scalar_t__ drag_result_t ;
typedef int border_t ;
struct TYPE_12__ {int width; int height; } ;
struct TYPE_13__ {scalar_t__ scratchpad_state; TYPE_2__ rect; } ;
typedef TYPE_2__ Rect ;
typedef TYPE_3__ Con ;


 int BORDER_BOTTOM ;
 int BORDER_LEFT ;
 int BORDER_RIGHT ;
 int BORDER_TOP ;
 int DLOG (char*) ;
 scalar_t__ DRAG_REVERT ;
 scalar_t__ SCRATCHPAD_CHANGED ;
 scalar_t__ SCRATCHPAD_FRESH ;
 int XCB_NONE ;
 int XCURSOR_CURSOR_BOTTOM_LEFT_CORNER ;
 int XCURSOR_CURSOR_BOTTOM_RIGHT_CORNER ;
 int XCURSOR_CURSOR_TOP_LEFT_CORNER ;
 int XCURSOR_CURSOR_TOP_RIGHT_CORNER ;
 int con_exists (TYPE_3__*) ;
 scalar_t__ drag_pointer (TYPE_3__*,TYPE_1__ const*,int ,int,int,int ,struct resize_window_callback_params*) ;
 int floating_reposition (TYPE_3__*,TYPE_2__) ;
 int resize_window_callback ;

void floating_resize_window(Con *con, const bool proportional,
                            const xcb_button_press_event_t *event) {
    DLOG("floating_resize_window\n");



    border_t corner = 0;

    if (event->event_x <= (int16_t)(con->rect.width / 2))
        corner |= BORDER_LEFT;
    else
        corner |= BORDER_RIGHT;

    int cursor = 0;
    if (event->event_y <= (int16_t)(con->rect.height / 2)) {
        corner |= BORDER_TOP;
        cursor = (corner & BORDER_LEFT) ? XCURSOR_CURSOR_TOP_LEFT_CORNER : XCURSOR_CURSOR_TOP_RIGHT_CORNER;
    } else {
        corner |= BORDER_BOTTOM;
        cursor = (corner & BORDER_LEFT) ? XCURSOR_CURSOR_BOTTOM_LEFT_CORNER : XCURSOR_CURSOR_BOTTOM_RIGHT_CORNER;
    }

    struct resize_window_callback_params params = {corner, proportional};


    Rect initial_rect = con->rect;

    drag_result_t drag_result = drag_pointer(con, event, XCB_NONE, cursor, 0, resize_window_callback, &params);

    if (!con_exists(con)) {
        DLOG("The container has been closed in the meantime.\n");
        return;
    }


    if (drag_result == DRAG_REVERT)
        floating_reposition(con, initial_rect);


    if (con->scratchpad_state == SCRATCHPAD_FRESH)
        con->scratchpad_state = SCRATCHPAD_CHANGED;
}
