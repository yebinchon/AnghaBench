
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {unsigned int depth; int * prev_pfs_loc; struct pt_regs* regs; } ;
typedef TYPE_1__ ia64_backtrace_t ;


 int do_ia64_backtrace ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int unw_init_running (int ,TYPE_1__*) ;
 scalar_t__ user_mode (struct pt_regs* const) ;

void
ia64_backtrace(struct pt_regs * const regs, unsigned int depth)
{
 ia64_backtrace_t bt;
 unsigned long flags;






 if (user_mode(regs))
  return;

 bt.depth = depth;
 bt.regs = regs;
 bt.prev_pfs_loc = ((void*)0);
 local_irq_save(flags);
 unw_init_running(do_ia64_backtrace, &bt);
 local_irq_restore(flags);
}
