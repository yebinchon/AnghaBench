
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;



__attribute__((used)) static int mpc52xx_null_set_type(struct irq_data *d, unsigned int flow_type)
{
 return 0;
}
