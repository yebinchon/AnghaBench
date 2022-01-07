
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 scalar_t__ pica ;
 scalar_t__ picb ;

void apollo_irq_eoi(struct irq_data *data)
{
 *(volatile unsigned char *)(pica) = 0x20;
 *(volatile unsigned char *)(picb) = 0x20;
}
