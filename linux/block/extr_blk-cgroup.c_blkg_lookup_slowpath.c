
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; int id; } ;
struct blkcg_gq {struct request_queue* q; } ;
struct blkcg {int blkg_hint; int blkg_tree; } ;


 int lockdep_assert_held (int *) ;
 struct blkcg_gq* radix_tree_lookup (int *,int ) ;
 int rcu_assign_pointer (int ,struct blkcg_gq*) ;

struct blkcg_gq *blkg_lookup_slowpath(struct blkcg *blkcg,
          struct request_queue *q, bool update_hint)
{
 struct blkcg_gq *blkg;







 blkg = radix_tree_lookup(&blkcg->blkg_tree, q->id);
 if (blkg && blkg->q == q) {
  if (update_hint) {
   lockdep_assert_held(&q->queue_lock);
   rcu_assign_pointer(blkcg->blkg_hint, blkg);
  }
  return blkg;
 }

 return ((void*)0);
}
