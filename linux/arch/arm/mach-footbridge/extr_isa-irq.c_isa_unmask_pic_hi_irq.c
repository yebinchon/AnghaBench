
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int PIC_MASK_HI ;
 unsigned int inb (int ) ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static void isa_unmask_pic_hi_irq(struct irq_data *d)
{
 unsigned int mask = 1 << (d->irq & 7);

 outb(inb(PIC_MASK_HI) & ~mask, PIC_MASK_HI);
}
