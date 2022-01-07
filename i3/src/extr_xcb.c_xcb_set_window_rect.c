
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_5__ {int sequence; } ;
typedef TYPE_1__ xcb_void_cookie_t ;
typedef int xcb_connection_t ;
struct TYPE_6__ {int x; } ;
typedef TYPE_2__ Rect ;


 int XCB_CONFIG_WINDOW_HEIGHT ;
 int XCB_CONFIG_WINDOW_WIDTH ;
 int XCB_CONFIG_WINDOW_X ;
 int XCB_CONFIG_WINDOW_Y ;
 int add_ignore_event (int ,int) ;
 TYPE_1__ xcb_configure_window (int *,int ,int,int *) ;

void xcb_set_window_rect(xcb_connection_t *conn, xcb_window_t window, Rect r) {
    xcb_void_cookie_t cookie;
    cookie = xcb_configure_window(conn, window,
                                  XCB_CONFIG_WINDOW_X |
                                      XCB_CONFIG_WINDOW_Y |
                                      XCB_CONFIG_WINDOW_WIDTH |
                                      XCB_CONFIG_WINDOW_HEIGHT,
                                  &(r.x));

    add_ignore_event(cookie.sequence, -1);
}
