
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int dummy; } ;
typedef int irqreturn_t ;


 int mtip_handle_irq (struct driver_data*) ;

__attribute__((used)) static irqreturn_t mtip_irq_handler(int irq, void *instance)
{
 struct driver_data *dd = instance;

 return mtip_handle_irq(dd);
}
