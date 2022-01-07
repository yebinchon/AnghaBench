
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_get_property_reply_t ;
typedef int xcb_get_property_cookie_t ;
struct Startup_Sequence {int dummy; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ i3Window ;


 int A__NET_STARTUP_ID ;
 int XCB_GET_PROPERTY_TYPE_ANY ;
 int conn ;
 int startup_sequence_delete (struct Startup_Sequence*) ;
 struct Startup_Sequence* startup_sequence_get (TYPE_1__*,int *,int) ;
 int xcb_get_property (int ,int,int ,int ,int ,int ,int) ;
 int * xcb_get_property_reply (int ,int ,int *) ;

void startup_sequence_delete_by_window(i3Window *win) {
    struct Startup_Sequence *sequence;
    xcb_get_property_cookie_t cookie;
    xcb_get_property_reply_t *startup_id_reply;

    cookie = xcb_get_property(conn, 0, win->id, A__NET_STARTUP_ID,
                              XCB_GET_PROPERTY_TYPE_ANY, 0, 512);
    startup_id_reply = xcb_get_property_reply(conn, cookie, ((void*)0));

    sequence = startup_sequence_get(win, startup_id_reply, 1);
    if (sequence != ((void*)0)) {
        startup_sequence_delete(sequence);
    }
}
