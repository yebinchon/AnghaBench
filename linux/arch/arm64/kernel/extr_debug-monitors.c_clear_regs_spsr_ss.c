
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pstate; } ;


 int DBG_SPSR_SS ;

__attribute__((used)) static void clear_regs_spsr_ss(struct pt_regs *regs)
{
 regs->pstate &= ~DBG_SPSR_SS;
}
