
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int DLOG (char*) ;
 int previous_workspace_name ;
 int * workspace_get (int ,int *) ;

Con *workspace_back_and_forth_get(void) {
    if (!previous_workspace_name) {
        DLOG("No previous workspace name set.\n");
        return ((void*)0);
    }

    Con *workspace;
    workspace = workspace_get(previous_workspace_name, ((void*)0));

    return workspace;
}
