
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GIC_PRIO_IRQON ;
 int GIC_PRIO_PSR_I_SET ;
 int PSR_I_BIT ;
 scalar_t__ WARN_ON (int) ;
 int daif ;
 int gic_enable_sre () ;
 int gic_write_pmr (int) ;
 int read_sysreg (int ) ;

__attribute__((used)) static void init_gic_priority_masking(void)
{
 u32 cpuflags;

 if (WARN_ON(!gic_enable_sre()))
  return;

 cpuflags = read_sysreg(daif);

 WARN_ON(!(cpuflags & PSR_I_BIT));

 gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
}
