
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debugreg6; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {int dummy; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;


 int DR_TRAP0 ;
 TYPE_2__* breakinfo ;
 struct task_struct* current ;

__attribute__((used)) static void kgdb_hw_overflow_handler(struct perf_event *event,
  struct perf_sample_data *data, struct pt_regs *regs)
{
 struct task_struct *tsk = current;
 int i;

 for (i = 0; i < 4; i++)
  if (breakinfo[i].enabled)
   tsk->thread.debugreg6 |= (DR_TRAP0 << i);
}
