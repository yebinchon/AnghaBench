
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Workspace_Assignment {int name; } ;
struct TYPE_3__ {int * con; } ;
typedef TYPE_1__ Output ;
typedef int Con ;


 int * get_assigned_output (int ,int) ;

bool output_triggers_assignment(Output *output, struct Workspace_Assignment *assignment) {
    Con *assigned = get_assigned_output(assignment->name, -1);
    return assigned && assigned == output->con;
}
