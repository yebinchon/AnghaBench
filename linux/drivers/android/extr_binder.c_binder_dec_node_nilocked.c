
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct binder_proc {int nodes; int todo; int inner_lock; } ;
struct TYPE_3__ {int entry; } ;
struct binder_node {int debug_id; int dead_node; scalar_t__ tmp_refs; TYPE_1__ work; int rb_node; scalar_t__ local_weak_refs; scalar_t__ local_strong_refs; int refs; scalar_t__ has_weak_ref; scalar_t__ has_strong_ref; scalar_t__ internal_strong_refs; int lock; struct binder_proc* proc; } ;


 int BINDER_DEBUG_INTERNAL_REFS ;
 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int binder_dead_nodes_lock ;
 int binder_debug (int ,char*,int ) ;
 int binder_dequeue_work_ilocked (TYPE_1__*) ;
 int binder_enqueue_work_ilocked (TYPE_1__*,int *) ;
 int binder_wakeup_proc_ilocked (struct binder_proc*) ;
 int hlist_del (int *) ;
 scalar_t__ hlist_empty (int *) ;
 scalar_t__ list_empty (int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool binder_dec_node_nilocked(struct binder_node *node,
         int strong, int internal)
{
 struct binder_proc *proc = node->proc;

 assert_spin_locked(&node->lock);
 if (proc)
  assert_spin_locked(&proc->inner_lock);
 if (strong) {
  if (internal)
   node->internal_strong_refs--;
  else
   node->local_strong_refs--;
  if (node->local_strong_refs || node->internal_strong_refs)
   return 0;
 } else {
  if (!internal)
   node->local_weak_refs--;
  if (node->local_weak_refs || node->tmp_refs ||
    !hlist_empty(&node->refs))
   return 0;
 }

 if (proc && (node->has_strong_ref || node->has_weak_ref)) {
  if (list_empty(&node->work.entry)) {
   binder_enqueue_work_ilocked(&node->work, &proc->todo);
   binder_wakeup_proc_ilocked(proc);
  }
 } else {
  if (hlist_empty(&node->refs) && !node->local_strong_refs &&
      !node->local_weak_refs && !node->tmp_refs) {
   if (proc) {
    binder_dequeue_work_ilocked(&node->work);
    rb_erase(&node->rb_node, &proc->nodes);
    binder_debug(BINDER_DEBUG_INTERNAL_REFS,
          "refless node %d deleted\n",
          node->debug_id);
   } else {
    BUG_ON(!list_empty(&node->work.entry));
    spin_lock(&binder_dead_nodes_lock);




    if (node->tmp_refs) {
     spin_unlock(&binder_dead_nodes_lock);
     return 0;
    }
    hlist_del(&node->dead_node);
    spin_unlock(&binder_dead_nodes_lock);
    binder_debug(BINDER_DEBUG_INTERNAL_REFS,
          "dead node %d deleted\n",
          node->debug_id);
   }
   return 1;
  }
 }
 return 0;
}
