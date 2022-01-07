
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int name; int focus_head; int rect; } ;
struct TYPE_13__ {scalar_t__ con; } ;
typedef TYPE_1__ Output ;
typedef TYPE_2__ Con ;


 int DLOG (char*,...) ;
 int ELOG (char*) ;
 TYPE_2__* TAILQ_FIRST (int *) ;
 int con_activate (int ) ;
 int con_descend_focused (TYPE_2__*) ;
 scalar_t__ con_get_output (TYPE_2__*) ;
 int con_get_workspace (TYPE_2__*) ;
 scalar_t__ con_is_internal (int ) ;
 int con_move_to_workspace (TYPE_2__*,TYPE_2__*,int,int,int) ;
 TYPE_1__* get_output_from_rect (int ) ;
 TYPE_2__* output_get_content (scalar_t__) ;
 int workspace_show (TYPE_2__*) ;

bool floating_maybe_reassign_ws(Con *con) {
    if (con_is_internal(con_get_workspace(con))) {
        DLOG("Con in an internal workspace\n");
        return 0;
    }

    Output *output = get_output_from_rect(con->rect);

    if (!output) {
        ELOG("No output found at destination coordinates?\n");
        return 0;
    }

    if (con_get_output(con) == output->con) {
        DLOG("still the same ws\n");
        return 0;
    }

    DLOG("Need to re-assign!\n");

    Con *content = output_get_content(output->con);
    Con *ws = TAILQ_FIRST(&(content->focus_head));
    DLOG("Moving con %p / %s to workspace %p / %s\n", con, con->name, ws, ws->name);
    con_move_to_workspace(con, ws, 0, 1, 0);
    workspace_show(ws);
    con_activate(con_descend_focused(con));
    return 1;
}
