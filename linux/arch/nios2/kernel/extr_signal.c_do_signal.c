
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {scalar_t__ orig_r2; unsigned int ea; unsigned int r2; int r7; int orig_r7; } ;
struct TYPE_6__ {int sa_flags; } ;
struct TYPE_7__ {TYPE_2__ sa; } ;
struct ksignal {TYPE_3__ ka; } ;
struct TYPE_5__ {struct pt_regs* kregs; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;


 scalar_t__ EINTR ;




 int SA_RESTART ;
 scalar_t__ __NR_restart_syscall ;
 TYPE_4__* current ;
 scalar_t__ get_signal (struct ksignal*) ;
 int handle_signal (struct ksignal*,struct pt_regs*) ;
 int restore_saved_sigmask () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_signal(struct pt_regs *regs)
{
 unsigned int retval = 0, continue_addr = 0, restart_addr = 0;
 int restart = 0;
 struct ksignal ksig;

 current->thread.kregs = regs;




 if (regs->orig_r2 >= 0) {
  continue_addr = regs->ea;
  restart_addr = continue_addr - 4;
  retval = regs->r2;





  switch (retval) {
  case 128:
   restart = -2;
  case 131:
  case 129:
  case 130:
   restart++;
   regs->r2 = regs->orig_r2;
   regs->r7 = regs->orig_r7;
   regs->ea = restart_addr;
   break;
  }
 }

 if (get_signal(&ksig)) {

  if (unlikely(restart && regs->ea == restart_addr)) {
   if (retval == 131 ||
       retval == 128 ||
        (retval == 129
    && !(ksig.ka.sa.sa_flags & SA_RESTART))) {
    regs->r2 = EINTR;
    regs->r7 = 1;
    regs->ea = continue_addr;
   }
  }
  handle_signal(&ksig, regs);
  return 0;
 }




 if (unlikely(restart) && regs->ea == restart_addr) {
  regs->ea = continue_addr;
  regs->r2 = __NR_restart_syscall;
 }




 restore_saved_sigmask();

 return restart;
}
