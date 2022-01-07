
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_prom64_registers {int dummy; } ;
struct jbusmc {int mc_reg_1; int num_dimm_groups; } ;


 int JB_MC_REG1_DIMM1_BANK0 ;
 int JB_MC_REG1_DIMM2_BANK2 ;
 int jbusmc_construct_one_dimm_group (struct jbusmc*,int,struct linux_prom64_registers const*,int) ;

__attribute__((used)) static void jbusmc_construct_dimm_groups(struct jbusmc *p,
      const struct linux_prom64_registers *mem_regs,
      int num_mem_regs)
{
 if (p->mc_reg_1 & JB_MC_REG1_DIMM1_BANK0) {
  jbusmc_construct_one_dimm_group(p, 0, mem_regs, num_mem_regs);
  p->num_dimm_groups++;
 }
 if (p->mc_reg_1 & JB_MC_REG1_DIMM2_BANK2) {
  jbusmc_construct_one_dimm_group(p, 1, mem_regs, num_mem_regs);
  p->num_dimm_groups++;
 }
}
