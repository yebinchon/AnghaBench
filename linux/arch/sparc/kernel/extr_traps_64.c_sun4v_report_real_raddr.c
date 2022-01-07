
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int tstate; scalar_t__ tpc; } ;


 int TSTATE_PRIV ;
 int compute_effective_address (struct pt_regs*,unsigned int,int ) ;
 int printk (char*,char const*,int ) ;

__attribute__((used)) static void sun4v_report_real_raddr(const char *pfx, struct pt_regs *regs)
{
 unsigned int insn;
 u64 addr;

 if (!(regs->tstate & TSTATE_PRIV))
  return;

 insn = *(unsigned int *) regs->tpc;

 addr = compute_effective_address(regs, insn, 0);

 printk("%s: insn effective address [0x%016llx]\n",
        pfx, addr);
}
