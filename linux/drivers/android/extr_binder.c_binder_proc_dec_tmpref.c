
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_proc {int tmp_ref; int threads; scalar_t__ is_dead; } ;


 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int binder_free_proc (struct binder_proc*) ;
 int binder_inner_proc_lock (struct binder_proc*) ;
 int binder_inner_proc_unlock (struct binder_proc*) ;

__attribute__((used)) static void binder_proc_dec_tmpref(struct binder_proc *proc)
{
 binder_inner_proc_lock(proc);
 proc->tmp_ref--;
 if (proc->is_dead && RB_EMPTY_ROOT(&proc->threads) &&
   !proc->tmp_ref) {
  binder_inner_proc_unlock(proc);
  binder_free_proc(proc);
  return;
 }
 binder_inner_proc_unlock(proc);
}
