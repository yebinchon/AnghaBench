
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ HIP01_PERI9 ;
 unsigned int PERI9_CPU1_RESET ;
 scalar_t__ ctrl_base ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 scalar_t__ of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

void hip01_set_cpu(int cpu, bool enable)
{
 unsigned int temp;
 struct device_node *np;

 if (!ctrl_base) {
  np = of_find_compatible_node(((void*)0), ((void*)0), "hisilicon,hip01-sysctrl");
  BUG_ON(!np);
  ctrl_base = of_iomap(np, 0);
  of_node_put(np);
  BUG_ON(!ctrl_base);
 }

 if (enable) {

  temp = readl_relaxed(ctrl_base + HIP01_PERI9);
  temp |= PERI9_CPU1_RESET;
  writel_relaxed(temp, ctrl_base + HIP01_PERI9);

  udelay(50);


  temp = readl_relaxed(ctrl_base + HIP01_PERI9);
  temp &= ~PERI9_CPU1_RESET;
  writel_relaxed(temp, ctrl_base + HIP01_PERI9);
 }
}
