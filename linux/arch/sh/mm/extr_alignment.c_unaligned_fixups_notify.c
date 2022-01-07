
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;
struct pt_regs {int dummy; } ;
typedef int insn_size_t ;


 int UM_WARN ;
 scalar_t__ instruction_pointer (struct pt_regs*) ;
 int pr_notice_ratelimited (char*,int ,int ,void*,int ) ;
 scalar_t__ se_kernmode_warn ;
 int se_usermode ;
 int task_pid_nr (struct task_struct*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void unaligned_fixups_notify(struct task_struct *tsk, insn_size_t insn,
        struct pt_regs *regs)
{
 if (user_mode(regs) && (se_usermode & UM_WARN))
  pr_notice_ratelimited("Fixing up unaligned userspace access "
     "in \"%s\" pid=%d pc=0x%p ins=0x%04hx\n",
     tsk->comm, task_pid_nr(tsk),
     (void *)instruction_pointer(regs), insn);
 else if (se_kernmode_warn)
  pr_notice_ratelimited("Fixing up unaligned kernel access "
     "in \"%s\" pid=%d pc=0x%p ins=0x%04hx\n",
     tsk->comm, task_pid_nr(tsk),
     (void *)instruction_pointer(regs), insn);
}
