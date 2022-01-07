
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_connection_t ;


 int DLOG (char*) ;
 int XCB_BUTTON_MASK_ANY ;
 int XCB_GRAB_ANY ;
 int root ;
 int xcb_ungrab_key (int *,int ,int ,int ) ;

void ungrab_all_keys(xcb_connection_t *conn) {
    DLOG("Ungrabbing all keys\n");
    xcb_ungrab_key(conn, XCB_GRAB_ANY, root, XCB_BUTTON_MASK_ANY);
}
