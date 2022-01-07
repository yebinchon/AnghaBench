
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct unw_frame_info {int dummy; } ;
struct task_struct {scalar_t__ state; TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_4__ {int siglock; } ;
struct TYPE_3__ {int flags; } ;


 int SIGNAL_STOP_STOPPED ;
 scalar_t__ TASK_STOPPED ;
 scalar_t__ TASK_TRACED ;
 int TIF_RESTORE_RSE ;
 int do_sync_rbs (struct unw_frame_info*,int ) ;
 int ia64_sync_user_rbs ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int set_notify_resume (struct task_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklist_lock ;
 int test_and_set_tsk_thread_flag (struct task_struct*,int ) ;
 int unw_init_from_blocked_task (struct unw_frame_info*,struct task_struct*) ;

void
ptrace_attach_sync_user_rbs (struct task_struct *child)
{
 int stopped = 0;
 struct unw_frame_info info;
 read_lock(&tasklist_lock);
 if (child->sighand) {
  spin_lock_irq(&child->sighand->siglock);
  if (child->state == TASK_STOPPED &&
      !test_and_set_tsk_thread_flag(child, TIF_RESTORE_RSE)) {
   set_notify_resume(child);

   child->state = TASK_TRACED;
   stopped = 1;
  }
  spin_unlock_irq(&child->sighand->siglock);
 }
 read_unlock(&tasklist_lock);

 if (!stopped)
  return;

 unw_init_from_blocked_task(&info, child);
 do_sync_rbs(&info, ia64_sync_user_rbs);





 read_lock(&tasklist_lock);
 if (child->sighand) {
  spin_lock_irq(&child->sighand->siglock);
  if (child->state == TASK_TRACED &&
      (child->signal->flags & SIGNAL_STOP_STOPPED)) {
   child->state = TASK_STOPPED;
  }
  spin_unlock_irq(&child->sighand->siglock);
 }
 read_unlock(&tasklist_lock);
}
