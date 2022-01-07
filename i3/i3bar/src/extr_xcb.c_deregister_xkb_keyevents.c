
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCB_XKB_ID_USE_CORE_KBD ;
 int conn ;
 int xcb_xkb_select_events (int ,int ,int ,int ,int ,int,int,int *) ;

__attribute__((used)) static void deregister_xkb_keyevents(void) {
    xcb_xkb_select_events(conn,
                          XCB_XKB_ID_USE_CORE_KBD,
                          0,
                          0,
                          0,
                          0xff,
                          0xff,
                          ((void*)0));
}
