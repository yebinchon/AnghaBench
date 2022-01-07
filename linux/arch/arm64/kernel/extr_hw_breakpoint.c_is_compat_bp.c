
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {struct task_struct* target; } ;
struct perf_event {TYPE_1__ hw; } ;


 scalar_t__ is_compat_thread (int ) ;
 int task_thread_info (struct task_struct*) ;

__attribute__((used)) static int is_compat_bp(struct perf_event *bp)
{
 struct task_struct *tsk = bp->hw.target;
 return tsk && is_compat_thread(task_thread_info(tsk));
}
