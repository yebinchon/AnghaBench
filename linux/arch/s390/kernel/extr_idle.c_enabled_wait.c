
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_idle_data {unsigned long long clock_idle_exit; unsigned long long clock_idle_enter; unsigned long long idle_time; int seqcount; int idle_count; } ;


 int CIF_NOHZ_DELAY ;
 unsigned long PSW_KERNEL_BITS ;
 unsigned long PSW_MASK_DAT ;
 unsigned long PSW_MASK_EXT ;
 unsigned long PSW_MASK_IO ;
 unsigned long PSW_MASK_MCHECK ;
 unsigned long PSW_MASK_WAIT ;
 int account_idle_time (int ) ;
 int clear_cpu_flag (int ) ;
 int cputime_to_nsecs (unsigned long long) ;
 int psw_idle (struct s390_idle_data*,unsigned long) ;
 int s390_idle ;
 struct s390_idle_data* this_cpu_ptr (int *) ;
 int trace_hardirqs_off () ;
 int trace_hardirqs_on () ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

void enabled_wait(void)
{
 struct s390_idle_data *idle = this_cpu_ptr(&s390_idle);
 unsigned long long idle_time;
 unsigned long psw_mask;

 trace_hardirqs_on();


 psw_mask = PSW_KERNEL_BITS | PSW_MASK_WAIT | PSW_MASK_DAT |
  PSW_MASK_IO | PSW_MASK_EXT | PSW_MASK_MCHECK;
 clear_cpu_flag(CIF_NOHZ_DELAY);


 psw_idle(idle, psw_mask);

 trace_hardirqs_off();


 write_seqcount_begin(&idle->seqcount);
 idle_time = idle->clock_idle_exit - idle->clock_idle_enter;
 idle->clock_idle_enter = idle->clock_idle_exit = 0ULL;
 idle->idle_time += idle_time;
 idle->idle_count++;
 account_idle_time(cputime_to_nsecs(idle_time));
 write_seqcount_end(&idle->seqcount);
}
