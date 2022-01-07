
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; } ;
typedef TYPE_1__ xcb_xinerama_is_active_reply_t ;
struct TYPE_6__ {int present; } ;


 int DLOG (char*) ;
 int FREE (TYPE_1__*) ;
 int conn ;
 int query_screens (int ) ;
 int use_root_output (int ) ;
 TYPE_3__* xcb_get_extension_data (int ,int *) ;
 int xcb_xinerama_id ;
 int xcb_xinerama_is_active (int ) ;
 TYPE_1__* xcb_xinerama_is_active_reply (int ,int ,int *) ;

void xinerama_init(void) {
    if (!xcb_get_extension_data(conn, &xcb_xinerama_id)->present) {
        DLOG("Xinerama extension not found, using root output.\n");
        use_root_output(conn);
    } else {
        xcb_xinerama_is_active_reply_t *reply;
        reply = xcb_xinerama_is_active_reply(conn, xcb_xinerama_is_active(conn), ((void*)0));

        if (reply == ((void*)0) || !reply->state) {
            DLOG("Xinerama is not active (in your X-Server), using root output.\n");
            use_root_output(conn);
        } else
            query_screens(conn);

        FREE(reply);
    }
}
