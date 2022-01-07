
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int set_c0_eimr (int ) ;

__attribute__((used)) static void cpuintr_enable(struct irq_data *d)
{
 set_c0_eimr(d->irq);
}
