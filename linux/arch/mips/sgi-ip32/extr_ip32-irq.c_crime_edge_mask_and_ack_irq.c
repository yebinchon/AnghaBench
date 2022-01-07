
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct irq_data {unsigned int irq; } ;
struct TYPE_2__ {int hard_int; } ;


 unsigned int CRIME_IRQ_BASE ;
 TYPE_1__* crime ;
 int crime_disable_irq (struct irq_data*) ;

__attribute__((used)) static void crime_edge_mask_and_ack_irq(struct irq_data *d)
{
 unsigned int bit = d->irq - CRIME_IRQ_BASE;
 uint64_t crime_int;


 crime_int = crime->hard_int;
 crime_int &= ~(1 << bit);
 crime->hard_int = crime_int;

 crime_disable_irq(d);
}
