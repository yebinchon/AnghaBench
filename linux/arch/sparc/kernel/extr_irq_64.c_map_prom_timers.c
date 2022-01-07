
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun5_timer {int dummy; } ;
struct device_node {struct device_node* sibling; struct device_node* child; } ;


 struct device_node* of_find_node_by_path (char*) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int prom_printf (char*) ;
 struct sun5_timer* prom_timers ;

__attribute__((used)) static void map_prom_timers(void)
{
 struct device_node *dp;
 const unsigned int *addr;


 dp = of_find_node_by_path("/");
 dp = dp->child;
 while (dp) {
  if (of_node_name_eq(dp, "counter-timer"))
   break;
  dp = dp->sibling;
 }




 if (!dp) {
  prom_timers = (struct sun5_timer *) 0;
  return;
 }


 addr = of_get_property(dp, "address", ((void*)0));
 if (!addr) {
  prom_printf("PROM does not have timer mapped, trying to continue.\n");
  prom_timers = (struct sun5_timer *) 0;
  return;
 }
 prom_timers = (struct sun5_timer *) ((unsigned long)addr[0]);
}
