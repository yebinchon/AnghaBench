
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int dummy; } ;
struct binder_proc {int dummy; } ;


 int GFP_KERNEL ;
 struct binder_thread* binder_get_thread_ilocked (struct binder_proc*,struct binder_thread*) ;
 int binder_inner_proc_lock (struct binder_proc*) ;
 int binder_inner_proc_unlock (struct binder_proc*) ;
 int kfree (struct binder_thread*) ;
 struct binder_thread* kzalloc (int,int ) ;

__attribute__((used)) static struct binder_thread *binder_get_thread(struct binder_proc *proc)
{
 struct binder_thread *thread;
 struct binder_thread *new_thread;

 binder_inner_proc_lock(proc);
 thread = binder_get_thread_ilocked(proc, ((void*)0));
 binder_inner_proc_unlock(proc);
 if (!thread) {
  new_thread = kzalloc(sizeof(*thread), GFP_KERNEL);
  if (new_thread == ((void*)0))
   return ((void*)0);
  binder_inner_proc_lock(proc);
  thread = binder_get_thread_ilocked(proc, new_thread);
  binder_inner_proc_unlock(proc);
  if (thread != new_thread)
   kfree(new_thread);
 }
 return thread;
}
