
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int* regs; int cp0_epc; } ;
struct ksignal {int dummy; } ;
struct TYPE_5__ {TYPE_1__* abi; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;
struct TYPE_4__ {int restart; } ;






 TYPE_3__* current ;
 scalar_t__ get_signal (struct ksignal*) ;
 int handle_signal (struct ksignal*,struct pt_regs*) ;
 int restore_saved_sigmask () ;

__attribute__((used)) static void do_signal(struct pt_regs *regs)
{
 struct ksignal ksig;

 if (get_signal(&ksig)) {

  handle_signal(&ksig, regs);
  return;
 }

 if (regs->regs[0]) {
  switch (regs->regs[2]) {
  case 131:
  case 129:
  case 130:
   regs->regs[2] = regs->regs[0];
   regs->regs[7] = regs->regs[26];
   regs->cp0_epc -= 4;
   break;

  case 128:
   regs->regs[2] = current->thread.abi->restart;
   regs->regs[7] = regs->regs[26];
   regs->cp0_epc -= 4;
   break;
  }
  regs->regs[0] = 0;
 }





 restore_saved_sigmask();
}
