
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int octeon_irq_ciu3_base_mbox_intsn (int) ;

__attribute__((used)) static unsigned int octeon_irq_ciu3_mbox_intsn_for_core(int core, unsigned int mbox)
{
 return octeon_irq_ciu3_base_mbox_intsn(core) + mbox;
}
