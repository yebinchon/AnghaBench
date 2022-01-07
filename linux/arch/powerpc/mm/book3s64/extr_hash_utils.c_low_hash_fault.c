
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;


 int BUS_ADRERR ;
 int SEGV_ACCERR ;
 int SIGBUS ;
 int SIGSEGV ;
 int _exception (int ,struct pt_regs*,int ,unsigned long) ;
 int bad_page_fault (struct pt_regs*,unsigned long,int ) ;
 int exception_enter () ;
 int exception_exit (int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void low_hash_fault(struct pt_regs *regs, unsigned long address, int rc)
{
 enum ctx_state prev_state = exception_enter();

 if (user_mode(regs)) {





   _exception(SIGBUS, regs, BUS_ADRERR, address);
 } else
  bad_page_fault(regs, address, SIGBUS);

 exception_exit(prev_state);
}
