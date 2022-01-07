
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;


 int A__NET_WM_STATE ;
 int A__NET_WM_STATE_FOCUSED ;
 int DLOG (char*,int ) ;
 int conn ;
 int xcb_add_property_atom (int ,int ,int ,int ) ;
 int xcb_remove_property_atom (int ,int ,int ,int ) ;

void ewmh_update_focused(xcb_window_t window, bool is_focused) {
    if (is_focused) {
        DLOG("Setting _NET_WM_STATE_FOCUSED for window = %d.\n", window);
        xcb_add_property_atom(conn, window, A__NET_WM_STATE, A__NET_WM_STATE_FOCUSED);
    } else {
        DLOG("Removing _NET_WM_STATE_FOCUSED for window = %d.\n", window);
        xcb_remove_property_atom(conn, window, A__NET_WM_STATE, A__NET_WM_STATE_FOCUSED);
    }
}
