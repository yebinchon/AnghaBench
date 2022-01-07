
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int proc; int tmp_ref; scalar_t__ is_dead; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int binder_free_thread (struct binder_thread*) ;
 int binder_inner_proc_lock (int ) ;
 int binder_inner_proc_unlock (int ) ;

__attribute__((used)) static void binder_thread_dec_tmpref(struct binder_thread *thread)
{




 binder_inner_proc_lock(thread->proc);
 atomic_dec(&thread->tmp_ref);
 if (thread->is_dead && !atomic_read(&thread->tmp_ref)) {
  binder_inner_proc_unlock(thread->proc);
  binder_free_thread(thread);
  return;
 }
 binder_inner_proc_unlock(thread->proc);
}
