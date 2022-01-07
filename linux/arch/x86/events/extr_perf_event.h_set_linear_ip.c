
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; unsigned long ip; int cs; } ;


 int PERF_EFLAGS_VM ;
 int X86_VM_MASK ;
 int __KERNEL_CS ;
 int __USER_CS ;
 scalar_t__ kernel_ip (unsigned long) ;

__attribute__((used)) static inline void set_linear_ip(struct pt_regs *regs, unsigned long ip)
{
 regs->cs = kernel_ip(ip) ? __KERNEL_CS : __USER_CS;
 if (regs->flags & X86_VM_MASK)
  regs->flags ^= (PERF_EFLAGS_VM | X86_VM_MASK);
 regs->ip = ip;
}
