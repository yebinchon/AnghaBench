
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int looper; int todo; int transaction_stack; } ;


 int BINDER_LOOPER_STATE_ENTERED ;
 int BINDER_LOOPER_STATE_REGISTERED ;
 scalar_t__ binder_worklist_empty_ilocked (int *) ;

__attribute__((used)) static bool binder_available_for_proc_work_ilocked(struct binder_thread *thread)
{
 return !thread->transaction_stack &&
  binder_worklist_empty_ilocked(&thread->todo) &&
  (thread->looper & (BINDER_LOOPER_STATE_ENTERED |
       BINDER_LOOPER_STATE_REGISTERED));
}
