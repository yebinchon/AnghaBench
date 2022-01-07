
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int REG (int ) ;
 int SEC_CR_OFFSET ;
 int ar7_irq_base ;
 int writel (int,int ) ;

__attribute__((used)) static void ar7_ack_sec_irq(struct irq_data *d)
{
 writel(1 << (d->irq - ar7_irq_base - 40), REG(SEC_CR_OFFSET));
}
