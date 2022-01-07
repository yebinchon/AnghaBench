
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct CommandResultIR {int needs_tree_render; } ;
struct TYPE_5__ {scalar_t__ workspace_auto_back_and_forth; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*) ;
 TYPE_1__* con_get_workspace (int ) ;
 TYPE_2__ config ;
 int focused ;
 scalar_t__ strcmp (int ,char const*) ;
 int workspace_back_and_forth () ;

__attribute__((used)) static bool maybe_back_and_forth(struct CommandResultIR *cmd_output, const char *name) {
    Con *ws = con_get_workspace(focused);


    if (strcmp(ws->name, name) != 0)
        return 0;

    DLOG("This workspace is already focused.\n");
    if (config.workspace_auto_back_and_forth) {
        workspace_back_and_forth();
        cmd_output->needs_tree_render = 1;
    }
    return 1;
}
