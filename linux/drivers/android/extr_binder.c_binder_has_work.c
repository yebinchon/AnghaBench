
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int proc; } ;


 int binder_has_work_ilocked (struct binder_thread*,int) ;
 int binder_inner_proc_lock (int ) ;
 int binder_inner_proc_unlock (int ) ;

__attribute__((used)) static bool binder_has_work(struct binder_thread *thread, bool do_proc_work)
{
 bool has_work;

 binder_inner_proc_lock(thread->proc);
 has_work = binder_has_work_ilocked(thread, do_proc_work);
 binder_inner_proc_unlock(thread->proc);

 return has_work;
}
