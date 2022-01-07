
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data32; } ;
struct TYPE_5__ {int format; TYPE_1__ data; int type; int window; int response_type; } ;
typedef TYPE_2__ xcb_client_message_event_t ;
typedef int uint8_t ;
struct TYPE_6__ {int atom; } ;


 size_t MANAGER ;
 int XCB_CLIENT_MESSAGE ;
 int XCB_CURRENT_TIME ;
 int * atoms ;
 int selwin ;
 TYPE_3__* tray_reply ;
 int xcb_connection ;
 int xcb_root ;
 int xcb_send_event (int ,int ,int ,int,char*) ;

__attribute__((used)) static void send_tray_clientmessage(void) {
    uint8_t buffer[32] = {0};
    xcb_client_message_event_t *ev = (xcb_client_message_event_t *)buffer;

    ev->response_type = XCB_CLIENT_MESSAGE;
    ev->window = xcb_root;
    ev->type = atoms[MANAGER];
    ev->format = 32;
    ev->data.data32[0] = XCB_CURRENT_TIME;
    ev->data.data32[1] = tray_reply->atom;
    ev->data.data32[2] = selwin;

    xcb_send_event(xcb_connection,
                   0,
                   xcb_root,
                   0xFFFFFF,
                   (char *)buffer);
}
