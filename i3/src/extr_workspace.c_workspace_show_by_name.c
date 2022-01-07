
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int * workspace_get (char const*,int *) ;
 int workspace_show (int *) ;

void workspace_show_by_name(const char *num) {
    Con *workspace;
    workspace = workspace_get(num, ((void*)0));
    workspace_show(workspace);
}
