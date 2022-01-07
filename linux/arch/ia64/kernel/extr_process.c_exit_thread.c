
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ pfm_context; } ;
struct task_struct {TYPE_1__ thread; } ;


 int IA64_THREAD_DBG_VALID ;
 int ia64_drop_fpu (struct task_struct*) ;
 int pfm_exit_thread (struct task_struct*) ;
 int pfm_release_debug_registers (struct task_struct*) ;

void
exit_thread (struct task_struct *tsk)
{

 ia64_drop_fpu(tsk);
}
