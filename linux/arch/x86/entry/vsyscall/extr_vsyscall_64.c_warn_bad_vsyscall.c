
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int di; int si; int ax; int sp; int cs; int ip; } ;
struct TYPE_3__ {int comm; } ;


 TYPE_1__* current ;
 int printk_ratelimited (char*,char const*,int ,int ,char const*,int ,int ,int ,int ,int ,int ) ;
 int show_unhandled_signals ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static void warn_bad_vsyscall(const char *level, struct pt_regs *regs,
         const char *message)
{
 if (!show_unhandled_signals)
  return;

 printk_ratelimited("%s%s[%d] %s ip:%lx cs:%lx sp:%lx ax:%lx si:%lx di:%lx\n",
      level, current->comm, task_pid_nr(current),
      message, regs->ip, regs->cs,
      regs->sp, regs->ax, regs->si, regs->di);
}
