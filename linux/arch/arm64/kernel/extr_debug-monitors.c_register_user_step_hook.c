
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct step_hook {int node; } ;


 int register_debug_hook (int *,int *) ;
 int user_step_hook ;

void register_user_step_hook(struct step_hook *hook)
{
 register_debug_hook(&hook->node, &user_step_hook);
}
