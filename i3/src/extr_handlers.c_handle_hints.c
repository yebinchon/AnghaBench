
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;
typedef int uint8_t ;
struct TYPE_4__ {int window; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*) ;
 TYPE_1__* con_by_window_id (int ) ;
 int con_set_urgency (TYPE_1__*,int) ;
 int tree_render () ;
 int window_update_hints (int ,int *,int*) ;
 int * xcb_get_property_reply (int *,int ,int *) ;
 int xcb_icccm_get_wm_hints (int *,int ) ;

__attribute__((used)) static bool handle_hints(void *data, xcb_connection_t *conn, uint8_t state, xcb_window_t window,
                         xcb_atom_t name, xcb_get_property_reply_t *reply) {
    Con *con = con_by_window_id(window);
    if (con == ((void*)0)) {
        DLOG("Received WM_HINTS for unknown client\n");
        return 0;
    }

    bool urgency_hint;
    if (reply == ((void*)0))
        reply = xcb_get_property_reply(conn, xcb_icccm_get_wm_hints(conn, window), ((void*)0));
    window_update_hints(con->window, reply, &urgency_hint);
    con_set_urgency(con, urgency_hint);
    tree_render();

    return 1;
}
