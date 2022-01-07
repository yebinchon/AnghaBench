
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A__NET_WORKAREA ;
 int conn ;
 int root ;
 int xcb_delete_property (int ,int ,int ) ;

void ewmh_update_workarea(void) {
    xcb_delete_property(conn, root, A__NET_WORKAREA);
}
