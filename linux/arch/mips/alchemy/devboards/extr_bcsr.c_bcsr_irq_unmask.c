
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 scalar_t__ BCSR_REG_MASKSET ;
 int __raw_writew (unsigned short,scalar_t__) ;
 int bcsr_csc_base ;
 scalar_t__ bcsr_virt ;
 int wmb () ;

__attribute__((used)) static void bcsr_irq_unmask(struct irq_data *d)
{
 unsigned short v = 1 << (d->irq - bcsr_csc_base);
 __raw_writew(v, bcsr_virt + BCSR_REG_MASKSET);
 wmb();
}
