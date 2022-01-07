
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int direction_t ;
struct TYPE_12__ {int y; int x; } ;
struct TYPE_14__ {TYPE_1__ rect; } ;
struct TYPE_13__ {int con; } ;
typedef TYPE_2__ Output ;
typedef TYPE_3__ Con ;


 int CF_GLOBAL ;
 int CLOSEST_OUTPUT ;
 int DLOG (char*,...) ;
 int GREP_FIRST (TYPE_3__*,int ,int ) ;
 int child ;
 scalar_t__ con_get_fullscreen_con (TYPE_3__*,int ) ;
 TYPE_2__* get_output_containing (int ,int ) ;
 TYPE_2__* get_output_next (int ,TYPE_2__*,int ) ;
 int output_get_content (int ) ;
 int output_primary_name (TYPE_2__*) ;
 int workspace_is_visible (int ) ;

__attribute__((used)) static Con *get_tree_next_workspace(Con *con, direction_t direction) {
    if (con_get_fullscreen_con(con, CF_GLOBAL)) {
        DLOG("Cannot change workspace while in global fullscreen mode.\n");
        return ((void*)0);
    }

    Output *current_output = get_output_containing(con->rect.x, con->rect.y);
    if (!current_output) {
        return ((void*)0);
    }
    DLOG("Current output is %s\n", output_primary_name(current_output));

    Output *next_output = get_output_next(direction, current_output, CLOSEST_OUTPUT);
    if (!next_output) {
        return ((void*)0);
    }
    DLOG("Next output is %s\n", output_primary_name(next_output));


    Con *workspace = ((void*)0);
    GREP_FIRST(workspace, output_get_content(next_output->con), workspace_is_visible(child));
    return workspace;
}
