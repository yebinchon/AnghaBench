
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_function {int node; } ;


 int EINVAL ;
 int free_irq (unsigned int,struct pmf_function*) ;
 unsigned int irq_of_parse_and_map (int ,int ) ;

__attribute__((used)) static int macio_do_gpio_irq_disable(struct pmf_function *func)
{
 unsigned int irq = irq_of_parse_and_map(func->node, 0);
 if (!irq)
  return -EINVAL;
 free_irq(irq, func);
 return 0;
}
