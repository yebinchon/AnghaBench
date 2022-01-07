
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int clear_c0_eimr (int ) ;

__attribute__((used)) static void cpuintr_disable(struct irq_data *d)
{
 clear_c0_eimr(d->irq);
}
