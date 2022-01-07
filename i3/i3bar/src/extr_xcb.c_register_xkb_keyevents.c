
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_event; int present; } ;
typedef TYPE_1__ xcb_query_extension_reply_t ;


 int DLOG (char*) ;
 int ELOG (char*) ;
 int EXIT_FAILURE ;
 int XCB_XKB_EVENT_TYPE_STATE_NOTIFY ;
 int XCB_XKB_ID_USE_CORE_KBD ;
 int XCB_XKB_MAJOR_VERSION ;
 int XCB_XKB_MINOR_VERSION ;
 int conn ;
 int exit (int ) ;
 TYPE_1__* xcb_get_extension_data (int ,int *) ;
 int xcb_xkb_id ;
 int xcb_xkb_select_events (int ,int ,int ,int ,int ,int,int,int *) ;
 int xcb_xkb_use_extension (int ,int ,int ) ;
 int xkb_base ;

__attribute__((used)) static void register_xkb_keyevents(void) {
    const xcb_query_extension_reply_t *extreply;
    extreply = xcb_get_extension_data(conn, &xcb_xkb_id);
    if (!extreply->present) {
        ELOG("xkb is not present on this server\n");
        exit(EXIT_FAILURE);
    }
    DLOG("initializing xcb-xkb\n");
    xcb_xkb_use_extension(conn, XCB_XKB_MAJOR_VERSION, XCB_XKB_MINOR_VERSION);
    xcb_xkb_select_events(conn,
                          XCB_XKB_ID_USE_CORE_KBD,
                          XCB_XKB_EVENT_TYPE_STATE_NOTIFY,
                          0,
                          XCB_XKB_EVENT_TYPE_STATE_NOTIFY,
                          0xff,
                          0xff,
                          ((void*)0));
    xkb_base = extreply->first_event;
}
