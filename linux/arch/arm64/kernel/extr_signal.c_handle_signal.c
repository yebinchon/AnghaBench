
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pt_regs {int user_regs; } ;
struct TYPE_4__ {int sa_flags; } ;
struct TYPE_3__ {TYPE_2__ sa; } ;
struct ksignal {int sig; TYPE_1__ ka; } ;
typedef int sigset_t ;


 int SA_SIGINFO ;
 int compat_setup_frame (int,struct ksignal*,int *,struct pt_regs*) ;
 int compat_setup_rt_frame (int,struct ksignal*,int *,struct pt_regs*) ;
 struct task_struct* current ;
 scalar_t__ is_compat_task () ;
 int rseq_signal_deliver (struct ksignal*,struct pt_regs*) ;
 int setup_rt_frame (int,struct ksignal*,int *,struct pt_regs*) ;
 int * sigmask_to_save () ;
 int signal_setup_done (int,struct ksignal*,int ) ;
 int user_fastforward_single_step (struct task_struct*) ;
 int valid_user_regs (int *,struct task_struct*) ;

__attribute__((used)) static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
{
 struct task_struct *tsk = current;
 sigset_t *oldset = sigmask_to_save();
 int usig = ksig->sig;
 int ret;

 rseq_signal_deliver(ksig, regs);




 if (is_compat_task()) {
  if (ksig->ka.sa.sa_flags & SA_SIGINFO)
   ret = compat_setup_rt_frame(usig, ksig, oldset, regs);
  else
   ret = compat_setup_frame(usig, ksig, oldset, regs);
 } else {
  ret = setup_rt_frame(usig, ksig, oldset, regs);
 }




 ret |= !valid_user_regs(&regs->user_regs, current);





 if (!ret)
  user_fastforward_single_step(tsk);

 signal_setup_done(ret, ksig, 0);
}
