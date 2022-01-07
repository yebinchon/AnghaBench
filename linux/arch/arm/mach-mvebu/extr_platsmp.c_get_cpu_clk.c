
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int IS_ERR (struct clk*) ;
 scalar_t__ WARN (int,char*) ;
 scalar_t__ WARN_ON (int ) ;
 struct clk* of_clk_get (struct device_node*,int ) ;
 struct device_node* of_get_cpu_node (int,int *) ;

__attribute__((used)) static struct clk *get_cpu_clk(int cpu)
{
 struct clk *cpu_clk;
 struct device_node *np = of_get_cpu_node(cpu, ((void*)0));

 if (WARN(!np, "missing cpu node\n"))
  return ((void*)0);
 cpu_clk = of_clk_get(np, 0);
 if (WARN_ON(IS_ERR(cpu_clk)))
  return ((void*)0);
 return cpu_clk;
}
