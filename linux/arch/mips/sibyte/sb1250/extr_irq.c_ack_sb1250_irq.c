
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef unsigned int u64 ;
struct irq_data {unsigned int irq; } ;


 int A_IMR_REGISTER (int,int ) ;
 int IOADDR (int ) ;
 int NR_CPUS ;
 int R_IMR_LDT_INTERRUPT ;
 int R_IMR_LDT_INTERRUPT_CLR ;
 unsigned int __raw_readq (int ) ;
 int __raw_writeq (unsigned int,int ) ;
 int cpu_logical_map (int) ;
 scalar_t__ ldt_eoi_space ;
 int* sb1250_irq_owner ;
 int sb1250_mask_irq (int,unsigned int) ;

__attribute__((used)) static void ack_sb1250_irq(struct irq_data *d)
{
 unsigned int irq = d->irq;
 sb1250_mask_irq(sb1250_irq_owner[irq], irq);
}
