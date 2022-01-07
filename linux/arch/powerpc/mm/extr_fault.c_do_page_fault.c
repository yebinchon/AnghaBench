
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;


 int __do_page_fault (struct pt_regs*,unsigned long,unsigned long) ;
 int exception_enter () ;
 int exception_exit (int) ;

int do_page_fault(struct pt_regs *regs, unsigned long address,
    unsigned long error_code)
{
 enum ctx_state prev_state = exception_enter();
 int rc = __do_page_fault(regs, address, error_code);
 exception_exit(prev_state);
 return rc;
}
