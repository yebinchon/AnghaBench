
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



void gdb_regs_to_pt_regs(unsigned long *gdb_regs, struct pt_regs *regs)
{
 unsigned int i;
 unsigned long *pt_regb = (unsigned long *)regs;




 for (i = 1; i < (sizeof(struct pt_regs) / 4) - 1; i++)
  pt_regb[i] = gdb_regs[i];
}
