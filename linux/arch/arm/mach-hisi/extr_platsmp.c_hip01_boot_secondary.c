
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct device_node {int dummy; } ;
typedef int phys_addr_t ;


 int HIP01_BOOT_ADDRESS ;
 scalar_t__ REG_SC_CTRL ;
 unsigned int SC_SCTL_REMAP_CLR ;
 scalar_t__ WARN_ON (int) ;
 int __pa_symbol (int ) ;
 int barrier () ;
 scalar_t__ ctrl_base ;
 int hip01_set_boot_addr (int ,int ) ;
 int hip01_set_cpu (unsigned int,int) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 scalar_t__ of_iomap (struct device_node*,int ) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int secondary_startup ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int hip01_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 phys_addr_t jumpaddr;
 unsigned int remap_reg_value = 0;
 struct device_node *node;


 jumpaddr = __pa_symbol(secondary_startup);
 hip01_set_boot_addr(HIP01_BOOT_ADDRESS, jumpaddr);

 node = of_find_compatible_node(((void*)0), ((void*)0), "hisilicon,hip01-sysctrl");
 if (WARN_ON(!node))
  return -1;
 ctrl_base = of_iomap(node, 0);


 remap_reg_value = readl_relaxed(ctrl_base + REG_SC_CTRL);
 barrier();
 remap_reg_value |= SC_SCTL_REMAP_CLR;
 barrier();
 writel_relaxed(remap_reg_value, ctrl_base + REG_SC_CTRL);

 hip01_set_cpu(cpu, 1);

 return 0;
}
