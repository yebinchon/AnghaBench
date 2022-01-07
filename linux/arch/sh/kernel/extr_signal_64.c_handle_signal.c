
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {int sa_flags; } ;
struct TYPE_4__ {TYPE_1__ sa; } ;
struct ksignal {TYPE_2__ ka; } ;
typedef int sigset_t ;


 int SA_SIGINFO ;
 int TIF_SINGLESTEP ;
 int setup_frame (struct ksignal*,int *,struct pt_regs*) ;
 int setup_rt_frame (struct ksignal*,int *,struct pt_regs*) ;
 int * sigmask_to_save () ;
 int signal_setup_done (int,struct ksignal*,int ) ;
 int test_thread_flag (int ) ;

__attribute__((used)) static void
handle_signal(struct ksignal *ksig, struct pt_regs *regs)
{
 sigset_t *oldset = sigmask_to_save();
 int ret;


 if (ksig->ka.sa.sa_flags & SA_SIGINFO)
  ret = setup_rt_frame(ksig, oldset, regs);
 else
  ret = setup_frame(ksig, oldset, regs);

 signal_setup_done(ret, ksig, test_thread_flag(TIF_SINGLESTEP));
}
