
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_button_press_event_t ;
typedef scalar_t__ drag_result_t ;
struct TYPE_6__ {scalar_t__ scratchpad_state; int rect; } ;
typedef int Rect ;
typedef TYPE_1__ Con ;


 int DLOG (char*) ;
 scalar_t__ DRAG_REVERT ;
 scalar_t__ SCRATCHPAD_CHANGED ;
 scalar_t__ SCRATCHPAD_FRESH ;
 int XCB_NONE ;
 int XCURSOR_CURSOR_MOVE ;
 int con_exists (TYPE_1__*) ;
 scalar_t__ drag_pointer (TYPE_1__*,int const*,int ,int ,int,int ,int *) ;
 int drag_window_callback ;
 int floating_reposition (TYPE_1__*,int ) ;
 int tree_render () ;

void floating_drag_window(Con *con, const xcb_button_press_event_t *event, bool use_threshold) {
    DLOG("floating_drag_window\n");



    tree_render();


    Rect initial_rect = con->rect;


    drag_result_t drag_result = drag_pointer(con, event, XCB_NONE, XCURSOR_CURSOR_MOVE, use_threshold, drag_window_callback, ((void*)0));

    if (!con_exists(con)) {
        DLOG("The container has been closed in the meantime.\n");
        return;
    }


    if (drag_result == DRAG_REVERT) {
        floating_reposition(con, initial_rect);
        return;
    }


    if (con->scratchpad_state == SCRATCHPAD_FRESH)
        con->scratchpad_state = SCRATCHPAD_CHANGED;

    tree_render();
}
