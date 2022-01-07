
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* gprs; } ;



unsigned long arch_uretprobe_hijack_return_addr(unsigned long trampoline,
      struct pt_regs *regs)
{
 unsigned long orig;

 orig = regs->gprs[14];
 regs->gprs[14] = trampoline;
 return orig;
}
