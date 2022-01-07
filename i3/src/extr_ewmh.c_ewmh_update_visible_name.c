
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;


 int A_UTF8_STRING ;
 int A__NET_WM_VISIBLE_NAME ;
 int XCB_PROP_MODE_REPLACE ;
 int conn ;
 int strlen (char const*) ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int ,char const*) ;
 int xcb_delete_property (int ,int ,int ) ;

void ewmh_update_visible_name(xcb_window_t window, const char *name) {
    if (name != ((void*)0)) {
        xcb_change_property(conn, XCB_PROP_MODE_REPLACE, window, A__NET_WM_VISIBLE_NAME, A_UTF8_STRING, 8, strlen(name), name);
    } else {
        xcb_delete_property(conn, window, A__NET_WM_VISIBLE_NAME);
    }
}
