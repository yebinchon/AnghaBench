
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;
typedef int uint8_t ;
struct TYPE_5__ {int * window; } ;
typedef TYPE_1__ Con ;


 int XCB_ATOM_STRING ;
 int XCB_ATOM_WM_CLASS ;
 TYPE_1__* con_by_window_id (int ) ;
 TYPE_1__* remanage_window (TYPE_1__*) ;
 int window_update_class (int *,int *) ;
 int * xcb_get_property_reply (int *,int ,int *) ;
 int xcb_get_property_unchecked (int *,int,int ,int ,int ,int ,int) ;

__attribute__((used)) static bool handle_class_change(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                                xcb_atom_t name, xcb_get_property_reply_t *prop) {
    Con *con;
    if ((con = con_by_window_id(window)) == ((void*)0) || con->window == ((void*)0))
        return 0;

    if (prop == ((void*)0)) {
        prop = xcb_get_property_reply(conn, xcb_get_property_unchecked(conn, 0, window, XCB_ATOM_WM_CLASS, XCB_ATOM_STRING, 0, 32),
                                      ((void*)0));

        if (prop == ((void*)0))
            return 0;
    }

    window_update_class(con->window, prop);

    con = remanage_window(con);

    return 1;
}
