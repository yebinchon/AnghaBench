
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int cm_base ;
 int cm_clear_irqs () ;
 int cm_match ;
 struct device_node* of_find_matching_node (int *,int ) ;
 int of_iomap (struct device_node*,int ) ;
 int pr_crit (char*) ;

void cm_init(void)
{
 struct device_node *cm = of_find_matching_node(((void*)0), cm_match);

 if (!cm) {
  pr_crit("no core module node found in device tree\n");
  return;
 }
 cm_base = of_iomap(cm, 0);
 if (!cm_base) {
  pr_crit("could not remap core module\n");
  return;
 }
 cm_clear_irqs();
}
