
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int * dbr; } ;
struct task_struct {TYPE_1__ thread; } ;


 int IA64_THREAD_DBG_VALID ;
 int IA64_THREAD_PM_VALID ;
 unsigned long PFM_CPUINFO_SYST_WIDE ;
 unsigned long __this_cpu_read (int ) ;
 int ia64_save_debug_regs (int *) ;
 int pfm_save_regs (struct task_struct*) ;
 int pfm_syst_info ;
 int pfm_syst_wide_update_task (struct task_struct*,unsigned long,int ) ;

void
ia64_save_extra (struct task_struct *task)
{




 if ((task->thread.flags & IA64_THREAD_DBG_VALID) != 0)
  ia64_save_debug_regs(&task->thread.dbr[0]);
}
