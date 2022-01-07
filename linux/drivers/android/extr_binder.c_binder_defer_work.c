
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_proc {int deferred_work; int deferred_work_node; } ;
typedef enum binder_deferred_state { ____Placeholder_binder_deferred_state } binder_deferred_state ;


 int binder_deferred_list ;
 int binder_deferred_lock ;
 int binder_deferred_work ;
 int hlist_add_head (int *,int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
binder_defer_work(struct binder_proc *proc, enum binder_deferred_state defer)
{
 mutex_lock(&binder_deferred_lock);
 proc->deferred_work |= defer;
 if (hlist_unhashed(&proc->deferred_work_node)) {
  hlist_add_head(&proc->deferred_work_node,
    &binder_deferred_list);
  schedule_work(&binder_deferred_work);
 }
 mutex_unlock(&binder_deferred_lock);
}
