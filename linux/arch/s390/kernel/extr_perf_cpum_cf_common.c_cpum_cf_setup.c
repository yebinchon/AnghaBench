
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpum_cf_setup_cpu (int*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

__attribute__((used)) static int cpum_cf_setup(unsigned int cpu, int flags)
{
 local_irq_disable();
 cpum_cf_setup_cpu(&flags);
 local_irq_enable();
 return 0;
}
