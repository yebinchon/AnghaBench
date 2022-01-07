
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int msr; scalar_t__ nip; } ;
struct perf_event {int dummy; } ;
struct TYPE_3__ {struct perf_event* last_hit_ubp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int MSR_SE ;
 int WARN (int,char*,unsigned long) ;
 scalar_t__ __get_user_inatomic (unsigned int,unsigned int*) ;
 TYPE_2__* current ;
 int emulate_step (struct pt_regs*,unsigned int) ;
 scalar_t__ is_larx_stcx_instr (struct pt_regs*,unsigned int) ;
 int perf_event_disable_inatomic (struct perf_event*) ;
 int printk_ratelimited (char*,unsigned long) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static bool stepping_handler(struct pt_regs *regs, struct perf_event *bp,
        unsigned long addr)
{
 unsigned int instr = 0;

 if (__get_user_inatomic(instr, (unsigned int *)regs->nip))
  goto fail;

 if (is_larx_stcx_instr(regs, instr)) {
  printk_ratelimited("Breakpoint hit on instruction that can't be emulated."
       " Breakpoint at 0x%lx will be disabled.\n", addr);
  goto disable;
 }


 if (user_mode(regs)) {
  current->thread.last_hit_ubp = bp;
  regs->msr |= MSR_SE;
  return 0;
 }

 if (!emulate_step(regs, instr))
  goto fail;

 return 1;

fail:




 WARN(1, "Unable to handle hardware breakpoint. Breakpoint at "
  "0x%lx will be disabled.", addr);

disable:
 perf_event_disable_inatomic(bp);
 return 0;
}
