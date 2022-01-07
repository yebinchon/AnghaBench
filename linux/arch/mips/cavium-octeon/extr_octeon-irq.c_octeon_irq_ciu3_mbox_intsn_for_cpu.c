
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int octeon_coreid_for_cpu (int) ;
 unsigned int octeon_irq_ciu3_mbox_intsn_for_core (int,unsigned int) ;

__attribute__((used)) static unsigned int octeon_irq_ciu3_mbox_intsn_for_cpu(int cpu, unsigned int mbox)
{
 int local_core = octeon_coreid_for_cpu(cpu) & 0x3f;

 return octeon_irq_ciu3_mbox_intsn_for_core(local_core, mbox);
}
