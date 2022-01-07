
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int cpu_present (int) ;
 struct clk* of_clk_get (struct device_node*,int ) ;
 struct device_node* of_get_cpu_node (int,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static struct clk *cpu_to_clk(int cpu)
{
 struct device_node *np;
 struct clk *clk;

 if (!cpu_present(cpu))
  return ((void*)0);

 np = of_get_cpu_node(cpu, ((void*)0));
 if (!np)
  return ((void*)0);

 clk = of_clk_get(np, 0);
 of_node_put(np);
 return clk;
}
