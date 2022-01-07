
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int wait; int waiting_thread_node; struct binder_proc* proc; } ;
struct binder_proc {int waiting_threads; } ;


 int DEFINE_WAIT (int ) ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ binder_has_work_ilocked (struct binder_thread*,int) ;
 int binder_inner_proc_lock (struct binder_proc*) ;
 int binder_inner_proc_unlock (struct binder_proc*) ;
 int current ;
 int finish_wait (int *,int *) ;
 int freezer_count () ;
 int freezer_do_not_count () ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static int binder_wait_for_work(struct binder_thread *thread,
    bool do_proc_work)
{
 DEFINE_WAIT(wait);
 struct binder_proc *proc = thread->proc;
 int ret = 0;

 freezer_do_not_count();
 binder_inner_proc_lock(proc);
 for (;;) {
  prepare_to_wait(&thread->wait, &wait, TASK_INTERRUPTIBLE);
  if (binder_has_work_ilocked(thread, do_proc_work))
   break;
  if (do_proc_work)
   list_add(&thread->waiting_thread_node,
     &proc->waiting_threads);
  binder_inner_proc_unlock(proc);
  schedule();
  binder_inner_proc_lock(proc);
  list_del_init(&thread->waiting_thread_node);
  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
 }
 finish_wait(&thread->wait, &wait);
 binder_inner_proc_unlock(proc);
 freezer_count();

 return ret;
}
