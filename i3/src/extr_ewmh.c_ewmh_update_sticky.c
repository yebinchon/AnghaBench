
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;


 int A__NET_WM_STATE ;
 int A__NET_WM_STATE_STICKY ;
 int DLOG (char*,int ) ;
 int conn ;
 int xcb_add_property_atom (int ,int ,int ,int ) ;
 int xcb_remove_property_atom (int ,int ,int ,int ) ;

void ewmh_update_sticky(xcb_window_t window, bool sticky) {
    if (sticky) {
        DLOG("Setting _NET_WM_STATE_STICKY for window = %d.\n", window);
        xcb_add_property_atom(conn, window, A__NET_WM_STATE, A__NET_WM_STATE_STICKY);
    } else {
        DLOG("Removing _NET_WM_STATE_STICKY for window = %d.\n", window);
        xcb_remove_property_atom(conn, window, A__NET_WM_STATE, A__NET_WM_STATE_STICKY);
    }
}
