
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_prom_registers {scalar_t__ which_io; int phys_addr; } ;
struct linux_prom_ranges {scalar_t__ ot_child_space; scalar_t__ ot_parent_space; scalar_t__ ot_parent_base; scalar_t__ ot_child_base; } ;


 int prom_printf (char*) ;

__attribute__((used)) static void prom_adjust_regs(struct linux_prom_registers *regp, int nregs,
        struct linux_prom_ranges *rangep, int nranges)
{
 int regc, rngc;

 for (regc = 0; regc < nregs; regc++) {
  for (rngc = 0; rngc < nranges; rngc++)
   if (regp[regc].which_io == rangep[rngc].ot_child_space)
    break;
  if (rngc == nranges)
   prom_printf("adjust_regs: Could not find range with matching bus type...\n");
  regp[regc].which_io = rangep[rngc].ot_parent_space;
  regp[regc].phys_addr -= rangep[rngc].ot_child_base;
  regp[regc].phys_addr += rangep[rngc].ot_parent_base;
 }
}
