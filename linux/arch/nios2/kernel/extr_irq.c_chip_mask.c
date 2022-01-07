
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int CTL_IENABLE ;
 int WRCTL (int ,int) ;
 int ienable ;

__attribute__((used)) static void chip_mask(struct irq_data *d)
{
 ienable &= ~(1 << d->hwirq);
 WRCTL(CTL_IENABLE, ienable);
}
