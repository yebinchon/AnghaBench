
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int TIF_DB_DISABLED ;
 int XCHAL_NUM_DBREAK ;
 int clear_thread_flag (int ) ;
 int set_dbreak_regs (int,struct perf_event*) ;
 struct perf_event** this_cpu_ptr (int ) ;
 int wp_on_reg ;

void restore_dbreak(void)
{
 int i;

 for (i = 0; i < XCHAL_NUM_DBREAK; ++i) {
  struct perf_event *bp = this_cpu_ptr(wp_on_reg)[i];

  if (bp)
   set_dbreak_regs(i, bp);
 }
 clear_thread_flag(TIF_DB_DISABLED);
}
