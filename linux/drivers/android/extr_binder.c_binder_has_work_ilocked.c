
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_thread {TYPE_1__* proc; scalar_t__ looper_need_return; scalar_t__ process_todo; } ;
struct TYPE_2__ {int todo; } ;


 int binder_worklist_empty_ilocked (int *) ;

__attribute__((used)) static bool binder_has_work_ilocked(struct binder_thread *thread,
        bool do_proc_work)
{
 return thread->process_todo ||
  thread->looper_need_return ||
  (do_proc_work &&
   !binder_worklist_empty_ilocked(&thread->proc->todo));
}
