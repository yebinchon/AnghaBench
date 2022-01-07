
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int PF_KTHREAD ;
 TYPE_1__* current ;
 int dsemul_thread_cleanup (struct task_struct*) ;

void exit_thread(struct task_struct *tsk)
{




 if (!(current->flags & PF_KTHREAD))
  dsemul_thread_cleanup(tsk);
}
