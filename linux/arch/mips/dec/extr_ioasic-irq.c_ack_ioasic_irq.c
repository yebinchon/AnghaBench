
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int fast_iob () ;
 int mask_ioasic_irq (struct irq_data*) ;

__attribute__((used)) static void ack_ioasic_irq(struct irq_data *d)
{
 mask_ioasic_irq(d);
 fast_iob();
}
