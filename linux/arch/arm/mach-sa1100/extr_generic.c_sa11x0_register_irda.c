
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irda_platform_data {int dummy; } ;


 int sa11x0_register_device (int *,struct irda_platform_data*) ;
 int sa11x0ir_device ;

void sa11x0_register_irda(struct irda_platform_data *irda)
{
 sa11x0_register_device(&sa11x0ir_device, irda);
}
