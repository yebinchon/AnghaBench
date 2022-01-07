
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int dummy; } ;
struct binder_proc {int dummy; } ;


 struct binder_thread* binder_select_thread_ilocked (struct binder_proc*) ;
 int binder_wakeup_thread_ilocked (struct binder_proc*,struct binder_thread*,int) ;

__attribute__((used)) static void binder_wakeup_proc_ilocked(struct binder_proc *proc)
{
 struct binder_thread *thread = binder_select_thread_ilocked(proc);

 binder_wakeup_thread_ilocked(proc, thread, 0);
}
