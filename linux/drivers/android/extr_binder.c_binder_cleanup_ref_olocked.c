
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int desc; int debug_id; scalar_t__ strong; } ;
struct binder_ref {TYPE_2__* death; TYPE_5__* proc; TYPE_1__ data; TYPE_3__* node; int node_entry; int rb_node_node; int rb_node_desc; } ;
struct TYPE_10__ {int pid; int refs_by_node; int refs_by_desc; } ;
struct TYPE_9__ {int debug_id; } ;
struct TYPE_8__ {int work; } ;


 int BINDER_DEBUG_DEAD_BINDER ;
 int BINDER_DEBUG_INTERNAL_REFS ;
 int BINDER_STAT_DEATH ;
 int BINDER_STAT_REF ;
 int binder_debug (int ,char*,int ,int ,int ,...) ;
 int binder_dec_node_nilocked (TYPE_3__*,int,int) ;
 int binder_dequeue_work (TYPE_5__*,int *) ;
 int binder_node_inner_lock (TYPE_3__*) ;
 int binder_node_inner_unlock (TYPE_3__*) ;
 int binder_stats_deleted (int ) ;
 int hlist_del (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void binder_cleanup_ref_olocked(struct binder_ref *ref)
{
 bool delete_node = 0;

 binder_debug(BINDER_DEBUG_INTERNAL_REFS,
       "%d delete ref %d desc %d for node %d\n",
        ref->proc->pid, ref->data.debug_id, ref->data.desc,
        ref->node->debug_id);

 rb_erase(&ref->rb_node_desc, &ref->proc->refs_by_desc);
 rb_erase(&ref->rb_node_node, &ref->proc->refs_by_node);

 binder_node_inner_lock(ref->node);
 if (ref->data.strong)
  binder_dec_node_nilocked(ref->node, 1, 1);

 hlist_del(&ref->node_entry);
 delete_node = binder_dec_node_nilocked(ref->node, 0, 1);
 binder_node_inner_unlock(ref->node);



 if (!delete_node) {





  ref->node = ((void*)0);
 }

 if (ref->death) {
  binder_debug(BINDER_DEBUG_DEAD_BINDER,
        "%d delete ref %d desc %d has death notification\n",
         ref->proc->pid, ref->data.debug_id,
         ref->data.desc);
  binder_dequeue_work(ref->proc, &ref->death->work);
  binder_stats_deleted(BINDER_STAT_DEATH);
 }
 binder_stats_deleted(BINDER_STAT_REF);
}
