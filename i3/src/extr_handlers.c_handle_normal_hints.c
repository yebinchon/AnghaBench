
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;
typedef int uint8_t ;
struct TYPE_6__ {int window; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*) ;
 int FREE (int *) ;
 TYPE_1__* con_by_window_id (int ) ;
 TYPE_1__* con_inside_floating (TYPE_1__*) ;
 int floating_check_size (TYPE_1__*,int) ;
 int tree_render () ;
 int window_update_normal_hints (int ,int *,int *) ;

__attribute__((used)) static bool handle_normal_hints(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                                xcb_atom_t name, xcb_get_property_reply_t *reply) {
    Con *con = con_by_window_id(window);
    if (con == ((void*)0)) {
        DLOG("Received WM_NORMAL_HINTS for unknown client\n");
        return 0;
    }

    bool changed = window_update_normal_hints(con->window, reply, ((void*)0));

    if (changed) {
        Con *floating = con_inside_floating(con);
        if (floating) {
            floating_check_size(con, 0);
            tree_render();
        }
    }

    FREE(reply);
    return 1;
}
