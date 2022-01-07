
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int con; } ;
typedef TYPE_1__ Output ;
typedef int Con ;


 int DLOG (char*,int *,int ) ;
 int GREP_FIRST (int *,int ,int ) ;
 int assert (int ) ;
 int child ;
 int con_move_to_workspace (int *,int *,int,int,int) ;
 int output_get_content (int ) ;
 int output_primary_name (TYPE_1__*) ;
 int workspace_is_visible (int ) ;

void con_move_to_output(Con *con, Output *output, bool fix_coordinates) {
    Con *ws = ((void*)0);
    GREP_FIRST(ws, output_get_content(output->con), workspace_is_visible(child));
    assert(ws != ((void*)0));
    DLOG("Moving con %p to output %s\n", con, output_primary_name(output));
    con_move_to_workspace(con, ws, fix_coordinates, 0, 0);
}
