
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {scalar_t__ tra; unsigned int* regs; scalar_t__ pc; } ;
struct TYPE_2__ {int sa; } ;
struct ksignal {TYPE_1__ ka; } ;


 unsigned int ERESTARTNOHAND ;
 unsigned int ERESTARTNOINTR ;
 unsigned int ERESTARTSYS ;
 unsigned int ERESTART_RESTARTBLOCK ;
 unsigned int __NR_restart_syscall ;
 int __raw_readw (scalar_t__) ;
 scalar_t__ get_signal (struct ksignal*) ;
 int handle_signal (struct ksignal*,struct pt_regs*,unsigned int) ;
 int handle_syscall_restart (unsigned int,struct pt_regs*,int *) ;
 scalar_t__ instruction_size (int ) ;
 int restore_saved_sigmask () ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static void do_signal(struct pt_regs *regs, unsigned int save_r0)
{
 struct ksignal ksig;







 if (!user_mode(regs))
  return;

 if (get_signal(&ksig)) {
  handle_syscall_restart(save_r0, regs, &ksig.ka.sa);


  handle_signal(&ksig, regs, save_r0);
  return;
 }


 if (regs->tra >= 0) {

  if (regs->regs[0] == -ERESTARTNOHAND ||
      regs->regs[0] == -ERESTARTSYS ||
      regs->regs[0] == -ERESTARTNOINTR) {
   regs->regs[0] = save_r0;
   regs->pc -= instruction_size(__raw_readw(regs->pc - 4));
  } else if (regs->regs[0] == -ERESTART_RESTARTBLOCK) {
   regs->pc -= instruction_size(__raw_readw(regs->pc - 4));
   regs->regs[3] = __NR_restart_syscall;
  }
 }





 restore_saved_sigmask();
}
