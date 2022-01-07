
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_thread {int wait; int proc; int looper; } ;
struct binder_proc {int dummy; } ;
typedef int __poll_t ;


 int BINDER_LOOPER_STATE_POLL ;
 int EPOLLIN ;
 int POLLERR ;
 int binder_available_for_proc_work_ilocked (struct binder_thread*) ;
 struct binder_thread* binder_get_thread (struct binder_proc*) ;
 scalar_t__ binder_has_work (struct binder_thread*,int) ;
 int binder_inner_proc_lock (int ) ;
 int binder_inner_proc_unlock (int ) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t binder_poll(struct file *filp,
    struct poll_table_struct *wait)
{
 struct binder_proc *proc = filp->private_data;
 struct binder_thread *thread = ((void*)0);
 bool wait_for_proc_work;

 thread = binder_get_thread(proc);
 if (!thread)
  return POLLERR;

 binder_inner_proc_lock(thread->proc);
 thread->looper |= BINDER_LOOPER_STATE_POLL;
 wait_for_proc_work = binder_available_for_proc_work_ilocked(thread);

 binder_inner_proc_unlock(thread->proc);

 poll_wait(filp, &thread->wait, wait);

 if (binder_has_work(thread, wait_for_proc_work))
  return EPOLLIN;

 return 0;
}
