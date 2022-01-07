
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int xics_push_cppr (int ) ;

int xics_retrigger(struct irq_data *data)
{





 xics_push_cppr(0);


 return 0;
}
