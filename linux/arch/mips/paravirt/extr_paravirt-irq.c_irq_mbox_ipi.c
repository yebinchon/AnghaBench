
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int MBOX_BITS_PER_CPU ;
 int WARN_ON (int) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 unsigned int cpunum_for_cpu (int) ;
 scalar_t__ mips_irq_chip ;
 scalar_t__ mips_irq_chip_reg_raw_w1s ;

void irq_mbox_ipi(int cpu, unsigned int actions)
{
 unsigned int cpuid = cpunum_for_cpu(cpu);
 u32 mask;

 WARN_ON(actions >= (1 << MBOX_BITS_PER_CPU));

 mask = actions << (cpuid * MBOX_BITS_PER_CPU);
 __raw_writel(mask, mips_irq_chip + mips_irq_chip_reg_raw_w1s + sizeof(u32));
}
