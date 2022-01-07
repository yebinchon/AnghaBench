
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_3__ {int * data32; } ;
struct TYPE_4__ {int format; TYPE_1__ data; int type; int window; int response_type; } ;
typedef TYPE_2__ xcb_client_message_event_t ;
typedef scalar_t__ kill_window_t ;


 int A_WM_DELETE_WINDOW ;
 int A_WM_PROTOCOLS ;
 scalar_t__ KILL_WINDOW ;
 int LOG (char*,...) ;
 int XCB_CLIENT_MESSAGE ;
 int XCB_CURRENT_TIME ;
 int XCB_EVENT_MASK_NO_EVENT ;
 int conn ;
 int free (void*) ;
 void* scalloc (int,int) ;
 int window_supports_protocol (int ,int ) ;
 int xcb_destroy_window (int ,int ) ;
 int xcb_flush (int ) ;
 int xcb_kill_client (int ,int ) ;
 int xcb_send_event (int ,int,int ,int ,char*) ;

void x_window_kill(xcb_window_t window, kill_window_t kill_window) {

    if (!window_supports_protocol(window, A_WM_DELETE_WINDOW)) {
        if (kill_window == KILL_WINDOW) {
            LOG("Killing specific window 0x%08x\n", window);
            xcb_destroy_window(conn, window);
        } else {
            LOG("Killing the X11 client which owns window 0x%08x\n", window);
            xcb_kill_client(conn, window);
        }
        return;
    }




    void *event = scalloc(32, 1);
    xcb_client_message_event_t *ev = event;

    ev->response_type = XCB_CLIENT_MESSAGE;
    ev->window = window;
    ev->type = A_WM_PROTOCOLS;
    ev->format = 32;
    ev->data.data32[0] = A_WM_DELETE_WINDOW;
    ev->data.data32[1] = XCB_CURRENT_TIME;

    LOG("Sending WM_DELETE to the client\n");
    xcb_send_event(conn, 0, window, XCB_EVENT_MASK_NO_EVENT, (char *)ev);
    xcb_flush(conn);
    free(event);
}
