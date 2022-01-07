
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLOG (char*) ;
 int previous_workspace_name ;
 int workspace_show_by_name (int ) ;

void workspace_back_and_forth(void) {
    if (!previous_workspace_name) {
        DLOG("No previous workspace name set. Not switching.\n");
        return;
    }

    workspace_show_by_name(previous_workspace_name);
}
