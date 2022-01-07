
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_cgu {int base; } ;


 int CONFIG_PM_SLEEP ;
 scalar_t__ IS_ENABLED (int ) ;
 int ingenic_cgu_base ;
 int ingenic_cgu_pm_ops ;
 int register_syscore_ops (int *) ;

void ingenic_cgu_register_syscore_ops(struct ingenic_cgu *cgu)
{
 if (IS_ENABLED(CONFIG_PM_SLEEP)) {
  ingenic_cgu_base = cgu->base;
  register_syscore_ops(&ingenic_cgu_pm_ops);
 }
}
