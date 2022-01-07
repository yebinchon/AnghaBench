
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die_if_kernel (char*,struct pt_regs*) ;

__attribute__((used)) static void sun4v_tlb_error(struct pt_regs *regs)
{
 die_if_kernel("TLB/TSB error", regs);
}
