
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {int steal_timer; int avg_steal_timer; } ;


 TYPE_1__ S390_lowcore ;
 int account_steal_time (int) ;
 scalar_t__ do_account_vtime (struct task_struct*) ;
 int virt_timer_expire () ;

void vtime_flush(struct task_struct *tsk)
{
 u64 steal, avg_steal;

 if (do_account_vtime(tsk))
  virt_timer_expire();

 steal = S390_lowcore.steal_timer;
 avg_steal = S390_lowcore.avg_steal_timer / 2;
 if ((s64) steal > 0) {
  S390_lowcore.steal_timer = 0;
  account_steal_time(steal);
  avg_steal += steal;
 }
 S390_lowcore.avg_steal_timer = avg_steal;
}
