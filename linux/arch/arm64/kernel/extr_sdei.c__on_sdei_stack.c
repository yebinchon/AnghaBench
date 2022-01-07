
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {int dummy; } ;


 int CONFIG_VMAP_STACK ;
 int IS_ENABLED (int ) ;
 scalar_t__ on_sdei_critical_stack (unsigned long,struct stack_info*) ;
 scalar_t__ on_sdei_normal_stack (unsigned long,struct stack_info*) ;

bool _on_sdei_stack(unsigned long sp, struct stack_info *info)
{
 if (!IS_ENABLED(CONFIG_VMAP_STACK))
  return 0;

 if (on_sdei_critical_stack(sp, info))
  return 1;

 if (on_sdei_normal_stack(sp, info))
  return 1;

 return 0;
}
