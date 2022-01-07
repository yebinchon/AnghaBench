
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t irq; } ;


 int BAST_VA_PC104_IRQMASK ;
 unsigned long __raw_readb (int ) ;
 int __raw_writeb (unsigned long,int ) ;
 unsigned long* bast_pc104_irqmasks ;

__attribute__((used)) static void
bast_pc104_unmask(struct irq_data *data)
{
 unsigned long temp;

 temp = __raw_readb(BAST_VA_PC104_IRQMASK);
 temp |= bast_pc104_irqmasks[data->irq];
 __raw_writeb(temp, BAST_VA_PC104_IRQMASK);
}
