
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_timestamp_t ;
struct TYPE_3__ {int * data32; } ;
struct TYPE_4__ {int format; TYPE_1__ data; int type; int window; int response_type; } ;
typedef TYPE_2__ xcb_client_message_event_t ;


 int A_WM_PROTOCOLS ;
 int A_WM_TAKE_FOCUS ;
 int DLOG (char*) ;
 int XCB_CLIENT_MESSAGE ;
 int XCB_EVENT_MASK_NO_EVENT ;
 int conn ;
 int free (void*) ;
 void* scalloc (int,int) ;
 int xcb_send_event (int ,int,int ,int ,char*) ;

void send_take_focus(xcb_window_t window, xcb_timestamp_t timestamp) {



    void *event = scalloc(32, 1);
    xcb_client_message_event_t *ev = event;

    ev->response_type = XCB_CLIENT_MESSAGE;
    ev->window = window;
    ev->type = A_WM_PROTOCOLS;
    ev->format = 32;
    ev->data.data32[0] = A_WM_TAKE_FOCUS;
    ev->data.data32[1] = timestamp;

    DLOG("Sending WM_TAKE_FOCUS to the client\n");
    xcb_send_event(conn, 0, window, XCB_EVENT_MASK_NO_EVENT, (char *)ev);
    free(event);
}
