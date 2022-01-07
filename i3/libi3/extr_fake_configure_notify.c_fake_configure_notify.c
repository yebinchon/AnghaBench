
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* xcb_window_t ;
struct TYPE_4__ {int height; int width; int y; int x; } ;
typedef TYPE_1__ xcb_rectangle_t ;
typedef int xcb_connection_t ;
struct TYPE_5__ {int border_width; int override_redirect; int above_sibling; int height; int width; int y; int x; int response_type; void* window; void* event; } ;
typedef TYPE_2__ xcb_configure_notify_event_t ;


 int XCB_CONFIGURE_NOTIFY ;
 int XCB_EVENT_MASK_STRUCTURE_NOTIFY ;
 int XCB_NONE ;
 int free (void*) ;
 void* scalloc (int,int) ;
 int xcb_flush (int *) ;
 int xcb_send_event (int *,int,void*,int ,char*) ;

void fake_configure_notify(xcb_connection_t *conn, xcb_rectangle_t r, xcb_window_t window, int border_width) {



    void *event = scalloc(32, 1);
    xcb_configure_notify_event_t *generated_event = event;

    generated_event->event = window;
    generated_event->window = window;
    generated_event->response_type = XCB_CONFIGURE_NOTIFY;

    generated_event->x = r.x;
    generated_event->y = r.y;
    generated_event->width = r.width;
    generated_event->height = r.height;

    generated_event->border_width = border_width;
    generated_event->above_sibling = XCB_NONE;
    generated_event->override_redirect = 0;

    xcb_send_event(conn, 0, window, XCB_EVENT_MASK_STRUCTURE_NOTIFY, (char *)generated_event);
    xcb_flush(conn);

    free(event);
}
