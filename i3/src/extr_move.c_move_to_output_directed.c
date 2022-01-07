
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int direction_t ;
struct TYPE_18__ {int deco_render_params; } ;
struct TYPE_17__ {int con; } ;
typedef TYPE_1__ Output ;
typedef TYPE_2__ Con ;


 int CLOSEST_OUTPUT ;
 int DLOG (char*) ;
 int FREE (int ) ;
 int GREP_FIRST (TYPE_2__*,int ,int ) ;
 int attach_to_workspace (TYPE_2__*,TYPE_2__*,int ) ;
 int child ;
 int con_focus (TYPE_2__*) ;
 TYPE_2__* con_get_workspace (TYPE_2__*) ;
 int croot ;
 int ewmh_update_wm_desktop () ;
 TYPE_2__* focused ;
 TYPE_1__* get_output_for_con (TYPE_2__*) ;
 TYPE_1__* get_output_next (int ,TYPE_1__*,int ) ;
 int ipc_send_window_event (char*,TYPE_2__*) ;
 int output_get_content (int ) ;
 int tree_flatten (int ) ;
 int workspace_is_visible (int ) ;
 int workspace_show (TYPE_2__*) ;

__attribute__((used)) static void move_to_output_directed(Con *con, direction_t direction) {
    Output *current_output = get_output_for_con(con);
    Output *output = get_output_next(direction, current_output, CLOSEST_OUTPUT);

    if (!output) {
        DLOG("No output in this direction found. Not moving.\n");
        return;
    }

    Con *ws = ((void*)0);
    GREP_FIRST(ws, output_get_content(output->con), workspace_is_visible(child));

    if (!ws) {
        DLOG("No workspace on output in this direction found. Not moving.\n");
        return;
    }

    Con *old_ws = con_get_workspace(con);
    const bool moves_focus = (focused == con);
    attach_to_workspace(con, ws, direction);
    if (moves_focus) {





        focused = old_ws;
        workspace_show(ws);
        con_focus(con);
    }


    FREE(con->deco_render_params);

    ipc_send_window_event("move", con);
    tree_flatten(croot);
    ewmh_update_wm_desktop();
}
