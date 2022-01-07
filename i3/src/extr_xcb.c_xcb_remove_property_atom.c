
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_6__ {int format; } ;
typedef TYPE_1__ xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef scalar_t__ xcb_atom_t ;


 int FREE (TYPE_1__*) ;
 int XCB_ATOM_ATOM ;
 int XCB_GET_PROPERTY_TYPE_ANY ;
 int XCB_PROP_MODE_REPLACE ;
 int xcb_change_property (int *,int ,int ,scalar_t__,int ,int,int,scalar_t__*) ;
 int xcb_get_property (int *,int,int ,scalar_t__,int ,int ,int) ;
 TYPE_1__* xcb_get_property_reply (int *,int ,int *) ;
 scalar_t__* xcb_get_property_value (TYPE_1__*) ;
 int xcb_get_property_value_length (TYPE_1__*) ;
 int xcb_grab_server (int *) ;
 int xcb_ungrab_server (int *) ;

void xcb_remove_property_atom(xcb_connection_t *conn, xcb_window_t window, xcb_atom_t property, xcb_atom_t atom) {
    xcb_grab_server(conn);

    xcb_get_property_reply_t *reply =
        xcb_get_property_reply(conn,
                               xcb_get_property(conn, 0, window, property, XCB_GET_PROPERTY_TYPE_ANY, 0, 4096), ((void*)0));
    if (reply == ((void*)0) || xcb_get_property_value_length(reply) == 0)
        goto release_grab;
    xcb_atom_t *atoms = xcb_get_property_value(reply);
    if (atoms == ((void*)0)) {
        goto release_grab;
    }

    {
        int num = 0;
        const int current_size = xcb_get_property_value_length(reply) / (reply->format / 8);
        xcb_atom_t values[current_size];
        for (int i = 0; i < current_size; i++) {
            if (atoms[i] != atom)
                values[num++] = atoms[i];
        }

        xcb_change_property(conn, XCB_PROP_MODE_REPLACE, window, property, XCB_ATOM_ATOM, 32, num, values);
    }

release_grab:
    FREE(reply);
    xcb_ungrab_server(conn);
}
