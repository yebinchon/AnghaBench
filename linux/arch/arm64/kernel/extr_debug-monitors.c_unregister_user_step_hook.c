
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct step_hook {int node; } ;


 int unregister_debug_hook (int *) ;

void unregister_user_step_hook(struct step_hook *hook)
{
 unregister_debug_hook(&hook->node);
}
