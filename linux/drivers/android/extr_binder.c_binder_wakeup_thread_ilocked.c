
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int wait; } ;
struct binder_proc {int inner_lock; } ;


 int assert_spin_locked (int *) ;
 int binder_wakeup_poll_threads_ilocked (struct binder_proc*,int) ;
 int wake_up_interruptible (int *) ;
 int wake_up_interruptible_sync (int *) ;

__attribute__((used)) static void binder_wakeup_thread_ilocked(struct binder_proc *proc,
      struct binder_thread *thread,
      bool sync)
{
 assert_spin_locked(&proc->inner_lock);

 if (thread) {
  if (sync)
   wake_up_interruptible_sync(&thread->wait);
  else
   wake_up_interruptible(&thread->wait);
  return;
 }
 binder_wakeup_poll_threads_ilocked(proc, sync);
}
