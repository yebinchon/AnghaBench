
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int BUG () ;
 long EFAULT ;
 long EINVAL ;
 int SEGV_BNDERR ;
 int SIGSEGV ;
 int _exception (int ,struct pt_regs*,int ,unsigned long) ;
 int bad_page_fault (struct pt_regs*,unsigned long,int ) ;
 int unrecoverable_exception (struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void do_bad_slb_fault(struct pt_regs *regs, unsigned long ea, long err)
{
 if (err == -EFAULT) {
  if (user_mode(regs))
   _exception(SIGSEGV, regs, SEGV_BNDERR, ea);
  else
   bad_page_fault(regs, ea, SIGSEGV);
 } else if (err == -EINVAL) {
  unrecoverable_exception(regs);
 } else {
  BUG();
 }
}
