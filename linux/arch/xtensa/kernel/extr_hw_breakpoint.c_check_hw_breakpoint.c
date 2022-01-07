
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int debugcause; scalar_t__ pc; } ;
struct TYPE_2__ {scalar_t__ bp_addr; int disabled; } ;
struct perf_event {TYPE_1__ attr; } ;


 int BIT (int ) ;
 int DEBUGCAUSE_DBNUM_MASK ;
 int DEBUGCAUSE_DBNUM_SHIFT ;
 int DEBUGCAUSE_DBREAK_BIT ;
 int DEBUGCAUSE_IBREAK_BIT ;
 int ENOENT ;
 scalar_t__ SREG_DBREAKC ;
 int TIF_DB_DISABLED ;
 int WARN_ONCE (int,char*,int) ;
 int XCHAL_NUM_DBREAK ;
 int XCHAL_NUM_IBREAK ;
 int bp_on_reg ;
 int perf_bp_event (struct perf_event*,struct pt_regs*) ;
 int set_thread_flag (int ) ;
 struct perf_event** this_cpu_ptr (int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;
 int wp_on_reg ;
 int xtensa_wsr (int ,scalar_t__) ;

int check_hw_breakpoint(struct pt_regs *regs)
{
 if (regs->debugcause & BIT(DEBUGCAUSE_IBREAK_BIT)) {
  int i;
  struct perf_event **bp = this_cpu_ptr(bp_on_reg);

  for (i = 0; i < XCHAL_NUM_IBREAK; ++i) {
   if (bp[i] && !bp[i]->attr.disabled &&
       regs->pc == bp[i]->attr.bp_addr)
    perf_bp_event(bp[i], regs);
  }
  return 0;
 } else if (regs->debugcause & BIT(DEBUGCAUSE_DBREAK_BIT)) {
  struct perf_event **bp = this_cpu_ptr(wp_on_reg);
  int dbnum = (regs->debugcause & DEBUGCAUSE_DBNUM_MASK) >>
   DEBUGCAUSE_DBNUM_SHIFT;

  if (dbnum < XCHAL_NUM_DBREAK && bp[dbnum]) {
   if (user_mode(regs)) {
    perf_bp_event(bp[dbnum], regs);
   } else {
    set_thread_flag(TIF_DB_DISABLED);
    xtensa_wsr(0, SREG_DBREAKC + dbnum);
   }
  } else {
   WARN_ONCE(1,
      "Wrong/unconfigured DBNUM reported in DEBUGCAUSE: %d\n",
      dbnum);
  }
  return 0;
 }
 return -ENOENT;
}
