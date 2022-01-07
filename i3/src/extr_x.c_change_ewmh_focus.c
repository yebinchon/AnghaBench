
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xcb_window_t ;


 scalar_t__ XCB_WINDOW_NONE ;
 int ewmh_update_active_window (scalar_t__) ;
 int ewmh_update_focused (scalar_t__,int) ;

__attribute__((used)) static void change_ewmh_focus(xcb_window_t new_focus, xcb_window_t old_focus) {
    if (new_focus == old_focus) {
        return;
    }

    ewmh_update_active_window(new_focus);

    if (new_focus != XCB_WINDOW_NONE) {
        ewmh_update_focused(new_focus, 1);
    }

    if (old_focus != XCB_WINDOW_NONE) {
        ewmh_update_focused(old_focus, 0);
    }
}
