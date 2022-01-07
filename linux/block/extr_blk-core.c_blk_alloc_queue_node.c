
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {scalar_t__ id; int node; int bio_split; TYPE_1__* backing_dev_info; int stats; int q_usage_counter; int mq_freeze_lock; int mq_freeze_wq; int queue_lock; int sysfs_dir_lock; int sysfs_lock; int blk_trace_mutex; int kobj; int blkg_list; int icq_list; int timeout_work; int timeout; int * last_merge; } ;
typedef int gfp_t ;
struct TYPE_3__ {char* name; int laptop_mode_wb_timer; int capabilities; int ra_pages; } ;


 int BDI_CAP_CGROUP_WRITEBACK ;
 int BIOSET_NEED_BVECS ;
 int BIO_POOL_SIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int PERCPU_REF_INIT_ATOMIC ;
 int VM_READAHEAD_PAGES ;
 int __GFP_ZERO ;
 TYPE_1__* bdi_alloc_node (int,int) ;
 int bdi_put (TYPE_1__*) ;
 int bioset_exit (int *) ;
 int bioset_init (int *,int ,int ,int ) ;
 int blk_alloc_queue_stats () ;
 int blk_free_queue_stats (int ) ;
 int blk_queue_ida ;
 int blk_queue_ktype ;
 int blk_queue_usage_counter_release ;
 int blk_requestq_cachep ;
 int blk_rq_timed_out_timer ;
 int blk_timeout_work ;
 scalar_t__ blkcg_init_queue (struct request_queue*) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int) ;
 int ida_simple_remove (int *,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 struct request_queue* kmem_cache_alloc_node (int ,int,int) ;
 int kmem_cache_free (int ,struct request_queue*) ;
 int kobject_init (int *,int *) ;
 int laptop_mode_timer_fn ;
 int mutex_init (int *) ;
 int percpu_ref_exit (int *) ;
 scalar_t__ percpu_ref_init (int *,int ,int ,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct request_queue *blk_alloc_queue_node(gfp_t gfp_mask, int node_id)
{
 struct request_queue *q;
 int ret;

 q = kmem_cache_alloc_node(blk_requestq_cachep,
    gfp_mask | __GFP_ZERO, node_id);
 if (!q)
  return ((void*)0);

 q->last_merge = ((void*)0);

 q->id = ida_simple_get(&blk_queue_ida, 0, 0, gfp_mask);
 if (q->id < 0)
  goto fail_q;

 ret = bioset_init(&q->bio_split, BIO_POOL_SIZE, 0, BIOSET_NEED_BVECS);
 if (ret)
  goto fail_id;

 q->backing_dev_info = bdi_alloc_node(gfp_mask, node_id);
 if (!q->backing_dev_info)
  goto fail_split;

 q->stats = blk_alloc_queue_stats();
 if (!q->stats)
  goto fail_stats;

 q->backing_dev_info->ra_pages = VM_READAHEAD_PAGES;
 q->backing_dev_info->capabilities = BDI_CAP_CGROUP_WRITEBACK;
 q->backing_dev_info->name = "block";
 q->node = node_id;

 timer_setup(&q->backing_dev_info->laptop_mode_wb_timer,
      laptop_mode_timer_fn, 0);
 timer_setup(&q->timeout, blk_rq_timed_out_timer, 0);
 INIT_WORK(&q->timeout_work, blk_timeout_work);
 INIT_LIST_HEAD(&q->icq_list);




 kobject_init(&q->kobj, &blk_queue_ktype);




 mutex_init(&q->sysfs_lock);
 mutex_init(&q->sysfs_dir_lock);
 spin_lock_init(&q->queue_lock);

 init_waitqueue_head(&q->mq_freeze_wq);
 mutex_init(&q->mq_freeze_lock);





 if (percpu_ref_init(&q->q_usage_counter,
    blk_queue_usage_counter_release,
    PERCPU_REF_INIT_ATOMIC, GFP_KERNEL))
  goto fail_bdi;

 if (blkcg_init_queue(q))
  goto fail_ref;

 return q;

fail_ref:
 percpu_ref_exit(&q->q_usage_counter);
fail_bdi:
 blk_free_queue_stats(q->stats);
fail_stats:
 bdi_put(q->backing_dev_info);
fail_split:
 bioset_exit(&q->bio_split);
fail_id:
 ida_simple_remove(&blk_queue_ida, q->id);
fail_q:
 kmem_cache_free(blk_requestq_cachep, q);
 return ((void*)0);
}
