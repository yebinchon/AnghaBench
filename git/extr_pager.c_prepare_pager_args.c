
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int use_shell; char* trace2_child_class; int env_array; int args; } ;


 int argv_array_push (int *,char const*) ;
 int setup_pager_env (int *) ;

void prepare_pager_args(struct child_process *pager_process, const char *pager)
{
 argv_array_push(&pager_process->args, pager);
 pager_process->use_shell = 1;
 setup_pager_env(&pager_process->env_array);
 pager_process->trace2_child_class = "pager";
}
