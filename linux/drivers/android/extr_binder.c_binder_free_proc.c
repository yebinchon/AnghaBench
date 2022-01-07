
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_proc {int tsk; int alloc; int delivered_death; int todo; } ;


 int BINDER_STAT_PROC ;
 int BUG_ON (int) ;
 int binder_alloc_deferred_release (int *) ;
 int binder_stats_deleted (int ) ;
 int kfree (struct binder_proc*) ;
 int list_empty (int *) ;
 int put_task_struct (int ) ;

__attribute__((used)) static void binder_free_proc(struct binder_proc *proc)
{
 BUG_ON(!list_empty(&proc->todo));
 BUG_ON(!list_empty(&proc->delivered_death));
 binder_alloc_deferred_release(&proc->alloc);
 put_task_struct(proc->tsk);
 binder_stats_deleted(BINDER_STAT_PROC);
 kfree(proc);
}
