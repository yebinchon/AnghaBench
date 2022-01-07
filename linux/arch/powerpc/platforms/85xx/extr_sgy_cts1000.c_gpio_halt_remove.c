
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int * halt; } ;


 int free_irq (int,int *) ;
 int gpio_free (int) ;
 int * halt_node ;
 int irq_of_parse_and_map (int *,int ) ;
 int of_get_gpio (int *,int ) ;
 int * pm_power_off ;
 TYPE_1__ ppc_md ;

__attribute__((used)) static int gpio_halt_remove(struct platform_device *pdev)
{
 if (halt_node) {
  int gpio = of_get_gpio(halt_node, 0);
  int irq = irq_of_parse_and_map(halt_node, 0);

  free_irq(irq, halt_node);

  ppc_md.halt = ((void*)0);
  pm_power_off = ((void*)0);

  gpio_free(gpio);

  halt_node = ((void*)0);
 }

 return 0;
}
