
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmf_function {TYPE_1__* node; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 unsigned int irq_of_parse_and_map (TYPE_1__*,int ) ;
 int macio_gpio_irq ;
 int request_irq (unsigned int,int ,int ,int ,struct pmf_function*) ;

__attribute__((used)) static int macio_do_gpio_irq_enable(struct pmf_function *func)
{
 unsigned int irq = irq_of_parse_and_map(func->node, 0);
 if (!irq)
  return -EINVAL;
 return request_irq(irq, macio_gpio_irq, 0, func->node->name, func);
}
