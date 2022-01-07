
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int window; int sequence; } ;
typedef TYPE_1__ xcb_map_request_event_t ;
typedef int xcb_get_window_attributes_cookie_t ;


 int DLOG (char*,int ,int ) ;
 int add_ignore_event (int ,int) ;
 int conn ;
 int manage_window (int ,int ,int) ;
 int xcb_get_window_attributes_unchecked (int ,int ) ;

__attribute__((used)) static void handle_map_request(xcb_map_request_event_t *event) {
    xcb_get_window_attributes_cookie_t cookie;

    cookie = xcb_get_window_attributes_unchecked(conn, event->window);

    DLOG("window = 0x%08x, serial is %d.\n", event->window, event->sequence);
    add_ignore_event(event->sequence, -1);

    manage_window(event->window, cookie, 0);
}
