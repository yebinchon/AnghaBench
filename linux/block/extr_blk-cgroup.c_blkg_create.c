
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int blkg_list; int id; int backing_dev_info; int queue_lock; } ;
struct blkcg_policy {int (* pd_online_fn ) (int ) ;int (* pd_init_fn ) (int ) ;} ;
struct blkcg_gq {int online; int * pd; int q_node; int blkcg_node; int parent; struct bdi_writeback_congested* wb_congested; } ;
struct TYPE_3__ {int id; } ;
struct blkcg {TYPE_1__ css; int lock; int blkg_list; int blkg_tree; } ;
struct bdi_writeback_congested {int dummy; } ;


 int BLKCG_MAX_POLS ;
 int ENODEV ;
 int ENOMEM ;
 struct blkcg_gq* ERR_PTR (int) ;
 int GFP_NOWAIT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __GFP_NOWARN ;
 int __blkg_lookup (scalar_t__,struct request_queue*,int) ;
 scalar_t__ blk_queue_dying (struct request_queue*) ;
 scalar_t__ blkcg_parent (struct blkcg*) ;
 struct blkcg_policy** blkcg_policy ;
 struct blkcg_gq* blkg_alloc (struct blkcg*,struct request_queue*,int) ;
 int blkg_free (struct blkcg_gq*) ;
 int blkg_get (int ) ;
 int blkg_put (struct blkcg_gq*) ;
 int css_put (TYPE_1__*) ;
 int css_tryget_online (TYPE_1__*) ;
 int hlist_add_head_rcu (int *,int *) ;
 scalar_t__ likely (int) ;
 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int radix_tree_insert (int *,int ,struct blkcg_gq*) ;
 int rcu_read_lock_held () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 scalar_t__ unlikely (int) ;
 struct bdi_writeback_congested* wb_congested_get_create (int ,int ,int) ;
 int wb_congested_put (struct bdi_writeback_congested*) ;

__attribute__((used)) static struct blkcg_gq *blkg_create(struct blkcg *blkcg,
        struct request_queue *q,
        struct blkcg_gq *new_blkg)
{
 struct blkcg_gq *blkg;
 struct bdi_writeback_congested *wb_congested;
 int i, ret;

 WARN_ON_ONCE(!rcu_read_lock_held());
 lockdep_assert_held(&q->queue_lock);


 if (blk_queue_dying(q)) {
  ret = -ENODEV;
  goto err_free_blkg;
 }


 if (!css_tryget_online(&blkcg->css)) {
  ret = -ENODEV;
  goto err_free_blkg;
 }

 wb_congested = wb_congested_get_create(q->backing_dev_info,
            blkcg->css.id,
            GFP_NOWAIT | __GFP_NOWARN);
 if (!wb_congested) {
  ret = -ENOMEM;
  goto err_put_css;
 }


 if (!new_blkg) {
  new_blkg = blkg_alloc(blkcg, q, GFP_NOWAIT | __GFP_NOWARN);
  if (unlikely(!new_blkg)) {
   ret = -ENOMEM;
   goto err_put_congested;
  }
 }
 blkg = new_blkg;
 blkg->wb_congested = wb_congested;


 if (blkcg_parent(blkcg)) {
  blkg->parent = __blkg_lookup(blkcg_parent(blkcg), q, 0);
  if (WARN_ON_ONCE(!blkg->parent)) {
   ret = -ENODEV;
   goto err_put_congested;
  }
  blkg_get(blkg->parent);
 }


 for (i = 0; i < BLKCG_MAX_POLS; i++) {
  struct blkcg_policy *pol = blkcg_policy[i];

  if (blkg->pd[i] && pol->pd_init_fn)
   pol->pd_init_fn(blkg->pd[i]);
 }


 spin_lock(&blkcg->lock);
 ret = radix_tree_insert(&blkcg->blkg_tree, q->id, blkg);
 if (likely(!ret)) {
  hlist_add_head_rcu(&blkg->blkcg_node, &blkcg->blkg_list);
  list_add(&blkg->q_node, &q->blkg_list);

  for (i = 0; i < BLKCG_MAX_POLS; i++) {
   struct blkcg_policy *pol = blkcg_policy[i];

   if (blkg->pd[i] && pol->pd_online_fn)
    pol->pd_online_fn(blkg->pd[i]);
  }
 }
 blkg->online = 1;
 spin_unlock(&blkcg->lock);

 if (!ret)
  return blkg;


 blkg_put(blkg);
 return ERR_PTR(ret);

err_put_congested:
 wb_congested_put(wb_congested);
err_put_css:
 css_put(&blkcg->css);
err_free_blkg:
 blkg_free(new_blkg);
 return ERR_PTR(ret);
}
