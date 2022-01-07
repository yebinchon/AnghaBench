
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_get_property_reply_t ;
typedef int xcb_connection_t ;
typedef int xcb_atom_t ;
typedef int uint8_t ;
struct TYPE_9__ {int * name; } ;
struct TYPE_8__ {TYPE_2__* window; } ;
typedef TYPE_1__ Con ;


 int FREE (char*) ;
 TYPE_1__* con_by_window_id (int ) ;
 int croot ;
 int i3string_as_utf8 (int *) ;
 int ipc_send_window_event (char*,TYPE_1__*) ;
 TYPE_1__* remanage_window (TYPE_1__*) ;
 char* sstrdup (int ) ;
 scalar_t__ window_name_changed (TYPE_2__*,char*) ;
 int window_update_name_legacy (TYPE_2__*,int *) ;
 int x_push_changes (int ) ;

__attribute__((used)) static bool handle_windowname_change_legacy(void *data, xcb_connection_t *conn, uint8_t state,
                                            xcb_window_t window, xcb_atom_t atom, xcb_get_property_reply_t *prop) {
    Con *con;
    if ((con = con_by_window_id(window)) == ((void*)0) || con->window == ((void*)0))
        return 0;

    char *old_name = (con->window->name != ((void*)0) ? sstrdup(i3string_as_utf8(con->window->name)) : ((void*)0));

    window_update_name_legacy(con->window, prop);

    con = remanage_window(con);

    x_push_changes(croot);

    if (window_name_changed(con->window, old_name))
        ipc_send_window_event("title", con);

    FREE(old_name);

    return 1;
}
