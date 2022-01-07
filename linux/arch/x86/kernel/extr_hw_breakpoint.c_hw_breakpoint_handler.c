
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ info; } ;
struct perf_event {TYPE_2__ hw; } ;
struct die_args {TYPE_4__* regs; int err; } ;
struct TYPE_8__ {unsigned long debugreg6; } ;
struct TYPE_10__ {TYPE_3__ thread; } ;
struct TYPE_9__ {int flags; } ;


 unsigned long DR_STEP ;
 int DR_TRAP0 ;
 unsigned long DR_TRAP_BITS ;
 scalar_t__ ERR_PTR (int ) ;
 int HBP_NUM ;
 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 scalar_t__ X86_BREAKPOINT_EXECUTE ;
 int X86_EFLAGS_RF ;
 int * bp_per_reg ;
 TYPE_5__* current ;
 int get_cpu () ;
 int get_debugreg (unsigned long,int) ;
 scalar_t__ likely (int) ;
 struct perf_event* per_cpu (int ,int) ;
 int perf_bp_event (struct perf_event*,TYPE_4__*) ;
 int put_cpu () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_debugreg (unsigned long,int) ;

__attribute__((used)) static int hw_breakpoint_handler(struct die_args *args)
{
 int i, cpu, rc = NOTIFY_STOP;
 struct perf_event *bp;
 unsigned long dr7, dr6;
 unsigned long *dr6_p;


 dr6_p = (unsigned long *)ERR_PTR(args->err);
 dr6 = *dr6_p;


 if (dr6 & DR_STEP)
  return NOTIFY_DONE;


 if ((dr6 & DR_TRAP_BITS) == 0)
  return NOTIFY_DONE;

 get_debugreg(dr7, 7);

 set_debugreg(0UL, 7);





 current->thread.debugreg6 &= ~DR_TRAP_BITS;
 cpu = get_cpu();


 for (i = 0; i < HBP_NUM; ++i) {
  if (likely(!(dr6 & (DR_TRAP0 << i))))
   continue;







  rcu_read_lock();

  bp = per_cpu(bp_per_reg[i], cpu);




  (*dr6_p) &= ~(DR_TRAP0 << i);




  if (!bp) {
   rcu_read_unlock();
   break;
  }

  perf_bp_event(bp, args->regs);





  if (bp->hw.info.type == X86_BREAKPOINT_EXECUTE)
   args->regs->flags |= X86_EFLAGS_RF;

  rcu_read_unlock();
 }





 if ((current->thread.debugreg6 & DR_TRAP_BITS) ||
     (dr6 & (~DR_TRAP_BITS)))
  rc = NOTIFY_DONE;

 set_debugreg(dr7, 7);
 put_cpu();

 return rc;
}
