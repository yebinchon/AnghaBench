
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int broken_idle(struct device_node *np)
{
 if (of_property_read_bool(np, "broken-idle")) {
  pr_warn("CPU idle is currently broken: disabling\n");
  return 1;
 }

 return 0;
}
