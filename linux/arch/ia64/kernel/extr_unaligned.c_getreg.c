
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_stack {unsigned long ar_unat; unsigned long caller_unat; } ;
struct pt_regs {int dummy; } ;


 int DPRINT (char*,unsigned long,scalar_t__) ;
 scalar_t__ GR_IN_SW (unsigned long) ;
 scalar_t__ GR_OFFS (unsigned long) ;
 unsigned long IA64_FIRST_STACKED_GR ;
 int get_rse_reg (struct pt_regs*,unsigned long,unsigned long*,int*) ;

__attribute__((used)) static void
getreg (unsigned long regnum, unsigned long *val, int *nat, struct pt_regs *regs)
{
 struct switch_stack *sw = (struct switch_stack *) regs - 1;
 unsigned long addr, *unat;

 if (regnum >= IA64_FIRST_STACKED_GR) {
  get_rse_reg(regs, regnum, val, nat);
  return;
 }




 if (regnum == 0) {
  *val = 0;
  if (nat)
   *nat = 0;
  return;
 }




 if (GR_IN_SW(regnum)) {
  addr = (unsigned long)sw;
  unat = &sw->ar_unat;
 } else {
  addr = (unsigned long)regs;
  unat = &sw->caller_unat;
 }

 DPRINT("addr_base=%lx offset=0x%x\n", addr, GR_OFFS(regnum));

 addr += GR_OFFS(regnum);

 *val = *(unsigned long *)addr;




 if (nat)
  *nat = (*unat >> (addr >> 3 & 0x3f)) & 0x1UL;
}
