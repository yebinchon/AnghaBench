
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;
typedef int uint8_t ;
struct TYPE_3__ {int * window; } ;
typedef TYPE_1__ Con ;


 TYPE_1__* con_by_window_id (int ) ;
 int window_update_type (int *,int *) ;

__attribute__((used)) static bool handle_window_type(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                               xcb_atom_t atom, xcb_get_property_reply_t *reply) {
    Con *con;
    if ((con = con_by_window_id(window)) == ((void*)0) || con->window == ((void*)0))
        return 0;

    window_update_type(con->window, reply);
    return 1;
}
