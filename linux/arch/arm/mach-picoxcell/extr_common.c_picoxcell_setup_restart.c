
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ WARN (int,char*) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_iomap (struct device_node*,int ) ;
 int wdt_regs ;

__attribute__((used)) static void picoxcell_setup_restart(void)
{
 struct device_node *np = of_find_compatible_node(((void*)0), ((void*)0),
        "snps,dw-apb-wdg");
 if (WARN(!np, "unable to setup watchdog restart"))
  return;

 wdt_regs = of_iomap(np, 0);
 WARN(!wdt_regs, "failed to remap watchdog regs");
}
