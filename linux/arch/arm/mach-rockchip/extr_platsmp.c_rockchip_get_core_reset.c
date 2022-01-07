
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 struct device* get_cpu_device (int) ;
 struct device_node* of_get_cpu_node (int,int *) ;
 struct reset_control* of_reset_control_get_exclusive (struct device_node*,int *) ;

__attribute__((used)) static struct reset_control *rockchip_get_core_reset(int cpu)
{
 struct device *dev = get_cpu_device(cpu);
 struct device_node *np;


 if (dev)
  np = dev->of_node;
 else
  np = of_get_cpu_node(cpu, ((void*)0));

 return of_reset_control_get_exclusive(np, ((void*)0));
}
