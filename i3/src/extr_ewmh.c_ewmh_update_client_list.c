
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;


 int A__NET_CLIENT_LIST ;
 int XCB_ATOM_WINDOW ;
 int XCB_PROP_MODE_REPLACE ;
 int conn ;
 int root ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int,int *) ;

void ewmh_update_client_list(xcb_window_t *list, int num_windows) {
    xcb_change_property(
        conn,
        XCB_PROP_MODE_REPLACE,
        root,
        A__NET_CLIENT_LIST,
        XCB_ATOM_WINDOW,
        32,
        num_windows,
        list);
}
