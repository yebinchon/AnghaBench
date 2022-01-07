
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct ksignal {int dummy; } ;
typedef int sigset_t ;


 int setup_rt_frame (struct ksignal*,int *,struct pt_regs*) ;
 int * sigmask_to_save () ;
 int signal_setup_done (int,struct ksignal*,int ) ;

__attribute__((used)) static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
{
 int ret;
 sigset_t *oldset = sigmask_to_save();


 ret = setup_rt_frame(ksig, oldset, regs);

 signal_setup_done(ret, ksig, 0);
}
