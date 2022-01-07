
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; } ;


 int X86_EFLAGS_FIXED ;

__attribute__((used)) static bool perf_hw_regs(struct pt_regs *regs)
{
 return regs->flags & X86_EFLAGS_FIXED;
}
