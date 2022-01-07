
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_prom64_registers {int dummy; } ;
struct jbusmc_dimm_group {unsigned long index; unsigned long base_addr; int size; struct jbusmc* controller; } ;
struct jbusmc {unsigned long portid; struct jbusmc_dimm_group* dimm_groups; } ;


 int jbusmc_dimm_group_size (unsigned long,struct linux_prom64_registers const*,int) ;

__attribute__((used)) static void jbusmc_construct_one_dimm_group(struct jbusmc *p,
         unsigned long index,
         const struct linux_prom64_registers *mem_regs,
         int num_mem_regs)
{
 struct jbusmc_dimm_group *dp = &p->dimm_groups[index];

 dp->controller = p;
 dp->index = index;

 dp->base_addr = (p->portid * (64UL * 1024 * 1024 * 1024));
 dp->base_addr += (index * (8UL * 1024 * 1024 * 1024));
 dp->size = jbusmc_dimm_group_size(dp->base_addr, mem_regs, num_mem_regs);
}
