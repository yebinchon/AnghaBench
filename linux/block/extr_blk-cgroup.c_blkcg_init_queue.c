
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; struct blkcg_gq* root_blkg; } ;
struct blkcg_gq {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct blkcg_gq*) ;
 int PTR_ERR (struct blkcg_gq*) ;
 int blk_iolatency_init (struct request_queue*) ;
 int blk_throtl_init (struct request_queue*) ;
 int blkcg_root ;
 struct blkcg_gq* blkg_alloc (int *,struct request_queue*,int ) ;
 struct blkcg_gq* blkg_create (int *,struct request_queue*,struct blkcg_gq*) ;
 int blkg_destroy_all (struct request_queue*) ;
 int radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int blkcg_init_queue(struct request_queue *q)
{
 struct blkcg_gq *new_blkg, *blkg;
 bool preloaded;
 int ret;

 new_blkg = blkg_alloc(&blkcg_root, q, GFP_KERNEL);
 if (!new_blkg)
  return -ENOMEM;

 preloaded = !radix_tree_preload(GFP_KERNEL);


 rcu_read_lock();
 spin_lock_irq(&q->queue_lock);
 blkg = blkg_create(&blkcg_root, q, new_blkg);
 if (IS_ERR(blkg))
  goto err_unlock;
 q->root_blkg = blkg;
 spin_unlock_irq(&q->queue_lock);
 rcu_read_unlock();

 if (preloaded)
  radix_tree_preload_end();

 ret = blk_iolatency_init(q);
 if (ret)
  goto err_destroy_all;

 ret = blk_throtl_init(q);
 if (ret)
  goto err_destroy_all;
 return 0;

err_destroy_all:
 blkg_destroy_all(q);
 return ret;
err_unlock:
 spin_unlock_irq(&q->queue_lock);
 rcu_read_unlock();
 if (preloaded)
  radix_tree_preload_end();
 return PTR_ERR(blkg);
}
