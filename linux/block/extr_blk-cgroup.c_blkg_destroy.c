
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blkcg_policy {int (* pd_offline_fn ) (int ) ;} ;
struct blkcg_gq {int online; int refcnt; int blkcg_node; int q_node; TYPE_1__* q; int stat_ios; int stat_bytes; int * pd; struct blkcg_gq* parent; struct blkcg* blkcg; } ;
struct blkcg {int blkg_hint; int blkg_tree; int lock; } ;
struct TYPE_2__ {int id; int queue_lock; } ;


 int BLKCG_MAX_POLS ;
 int WARN_ON_ONCE (int ) ;
 struct blkcg_policy** blkcg_policy ;
 int blkg_rwstat_add_aux (int *,int *) ;
 int hlist_del_init_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int percpu_ref_kill (int *) ;
 int radix_tree_delete (int *,int ) ;
 struct blkcg_gq* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void blkg_destroy(struct blkcg_gq *blkg)
{
 struct blkcg *blkcg = blkg->blkcg;
 struct blkcg_gq *parent = blkg->parent;
 int i;

 lockdep_assert_held(&blkg->q->queue_lock);
 lockdep_assert_held(&blkcg->lock);


 WARN_ON_ONCE(list_empty(&blkg->q_node));
 WARN_ON_ONCE(hlist_unhashed(&blkg->blkcg_node));

 for (i = 0; i < BLKCG_MAX_POLS; i++) {
  struct blkcg_policy *pol = blkcg_policy[i];

  if (blkg->pd[i] && pol->pd_offline_fn)
   pol->pd_offline_fn(blkg->pd[i]);
 }

 if (parent) {
  blkg_rwstat_add_aux(&parent->stat_bytes, &blkg->stat_bytes);
  blkg_rwstat_add_aux(&parent->stat_ios, &blkg->stat_ios);
 }

 blkg->online = 0;

 radix_tree_delete(&blkcg->blkg_tree, blkg->q->id);
 list_del_init(&blkg->q_node);
 hlist_del_init_rcu(&blkg->blkcg_node);






 if (rcu_access_pointer(blkcg->blkg_hint) == blkg)
  rcu_assign_pointer(blkcg->blkg_hint, ((void*)0));





 percpu_ref_kill(&blkg->refcnt);
}
