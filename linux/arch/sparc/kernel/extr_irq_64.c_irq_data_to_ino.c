
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_handler_data {unsigned int dev_ino; } ;
struct irq_data {int dummy; } ;


 struct irq_handler_data* irq_data_get_irq_handler_data (struct irq_data*) ;

__attribute__((used)) static inline unsigned int irq_data_to_ino(struct irq_data *data)
{
 struct irq_handler_data *ihd = irq_data_get_irq_handler_data(data);

 return ihd->dev_ino;
}
