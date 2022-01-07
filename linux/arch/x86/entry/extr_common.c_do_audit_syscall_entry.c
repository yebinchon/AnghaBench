
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pt_regs {int si; int dx; int cx; int bx; int orig_ax; int r10; int di; } ;


 scalar_t__ AUDIT_ARCH_X86_64 ;
 int audit_syscall_entry (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void do_audit_syscall_entry(struct pt_regs *regs, u32 arch)
{






 {
  audit_syscall_entry(regs->orig_ax, regs->bx,
        regs->cx, regs->dx, regs->si);
 }
}
