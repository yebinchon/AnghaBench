
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ xcb_window_t ;
struct TYPE_18__ {scalar_t__ managed_since; int id; } ;
struct TYPE_17__ {TYPE_4__* window; } ;
typedef int Match ;
typedef TYPE_1__ Con ;


 int DLOG (char*) ;
 scalar_t__ XCB_NONE ;
 scalar_t__ _match_depth (TYPE_4__*,TYPE_1__*) ;
 int _remove_matches (TYPE_1__*) ;
 TYPE_1__* con_for_window (int ,TYPE_4__*,int **) ;
 scalar_t__ con_get_workspace (TYPE_1__*) ;
 int con_merge_into (TYPE_1__*,TYPE_1__*) ;
 int conn ;
 int croot ;
 int ewmh_update_wm_desktop () ;
 int restore_kill_placeholder (int ) ;
 int run_assignments (TYPE_4__*) ;
 int startup_sequence_delete_by_window (TYPE_4__*) ;
 int window_free (TYPE_4__*) ;
 int x_reparent_child (TYPE_1__*,TYPE_1__*) ;
 int xcb_destroy_window (int ,scalar_t__) ;

Con *remanage_window(Con *con) {
    Match *match;
    Con *nc = con_for_window(croot, con->window, &match);
    if (nc == ((void*)0) || nc->window == ((void*)0) || nc->window == con->window) {
        run_assignments(con->window);
        return con;
    }



    if (nc->window->managed_since > con->window->managed_since) {
        run_assignments(con->window);
        return con;
    }

    if (!restore_kill_placeholder(nc->window->id)) {
        DLOG("Uh?! Container without a placeholder, but with a window, has swallowed this managed window?!\n");
    } else {
        _remove_matches(nc);
    }
    window_free(nc->window);

    xcb_window_t old_frame = _match_depth(con->window, nc);

    x_reparent_child(nc, con);

    bool moved_workpaces = (con_get_workspace(nc) != con_get_workspace(con));

    con_merge_into(con, nc);



    if (old_frame != XCB_NONE) {
        xcb_destroy_window(conn, old_frame);
    }

    run_assignments(nc->window);

    if (moved_workpaces) {


        startup_sequence_delete_by_window(nc->window);

        ewmh_update_wm_desktop();
    }

    return nc;
}
