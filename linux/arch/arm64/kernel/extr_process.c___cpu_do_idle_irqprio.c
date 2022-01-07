
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long GIC_PRIO_IRQON ;
 unsigned long GIC_PRIO_PSR_I_SET ;
 unsigned long PSR_I_BIT ;
 int __cpu_do_idle () ;
 int daif ;
 unsigned long gic_read_pmr () ;
 int gic_write_pmr (unsigned long) ;
 unsigned long read_sysreg (int ) ;
 int write_sysreg (unsigned long,int ) ;

__attribute__((used)) static void __cpu_do_idle_irqprio(void)
{
 unsigned long pmr;
 unsigned long daif_bits;

 daif_bits = read_sysreg(daif);
 write_sysreg(daif_bits | PSR_I_BIT, daif);





 pmr = gic_read_pmr();
 gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);

 __cpu_do_idle();

 gic_write_pmr(pmr);
 write_sysreg(daif_bits, daif);
}
