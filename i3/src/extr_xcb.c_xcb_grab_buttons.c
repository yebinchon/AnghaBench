
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int xcb_connection_t ;


 int XCB_BUTTON_MASK_ANY ;
 int XCB_EVENT_MASK_BUTTON_PRESS ;
 int XCB_GRAB_MODE_ASYNC ;
 int XCB_GRAB_MODE_SYNC ;
 int XCB_NONE ;
 int root ;
 int xcb_grab_button (int *,int,int ,int ,int ,int ,int ,int ,int,int ) ;

void xcb_grab_buttons(xcb_connection_t *conn, xcb_window_t window, int *buttons) {
    int i = 0;
    while (buttons[i] > 0) {
        xcb_grab_button(conn, 0, window, XCB_EVENT_MASK_BUTTON_PRESS, XCB_GRAB_MODE_SYNC,
                        XCB_GRAB_MODE_ASYNC, root, XCB_NONE, buttons[i], XCB_BUTTON_MASK_ANY);

        i++;
    }
}
