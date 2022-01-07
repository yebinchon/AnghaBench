
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* xcb_window_t ;
struct TYPE_3__ {void** data32; } ;
struct TYPE_4__ {int format; TYPE_1__ data; int type; void* window; int response_type; } ;
typedef TYPE_2__ xcb_client_message_event_t ;
typedef void* uint32_t ;


 int A_I3_SYNC ;
 int DLOG (char*,void*,void*) ;
 int XCB_CLIENT_MESSAGE ;
 int XCB_EVENT_MASK_NO_EVENT ;
 int conn ;
 int free (void*) ;
 void* scalloc (int,int) ;
 int xcb_flush (int ) ;
 int xcb_send_event (int ,int,void*,int ,char*) ;

void sync_respond(xcb_window_t window, uint32_t rnd) {
    DLOG("[i3 sync protocol] Sending random value %d back to X11 window 0x%08x\n", rnd, window);

    void *reply = scalloc(32, 1);
    xcb_client_message_event_t *ev = reply;

    ev->response_type = XCB_CLIENT_MESSAGE;
    ev->window = window;
    ev->type = A_I3_SYNC;
    ev->format = 32;
    ev->data.data32[0] = window;
    ev->data.data32[1] = rnd;

    xcb_send_event(conn, 0, window, XCB_EVENT_MASK_NO_EVENT, (char *)ev);
    xcb_flush(conn);
    free(reply);
}
