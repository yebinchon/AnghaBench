
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int nr_hw_queues; int sysfs_lock; struct blk_mq_hw_ctx** queue_hw_ctx; } ;
struct blk_mq_tag_set {int nr_hw_queues; int * map; } ;
struct blk_mq_hw_ctx {int numa_node; scalar_t__ tags; } ;


 size_t HCTX_TYPE_DEFAULT ;
 struct blk_mq_hw_ctx* blk_mq_alloc_and_init_hctx (struct blk_mq_tag_set*,struct request_queue*,int,int) ;
 int blk_mq_exit_hctx (struct request_queue*,struct blk_mq_tag_set*,struct blk_mq_hw_ctx*,int) ;
 int blk_mq_free_map_and_requests (struct blk_mq_tag_set*,int) ;
 int blk_mq_hw_queue_to_node (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static void blk_mq_realloc_hw_ctxs(struct blk_mq_tag_set *set,
      struct request_queue *q)
{
 int i, j, end;
 struct blk_mq_hw_ctx **hctxs = q->queue_hw_ctx;


 mutex_lock(&q->sysfs_lock);
 for (i = 0; i < set->nr_hw_queues; i++) {
  int node;
  struct blk_mq_hw_ctx *hctx;

  node = blk_mq_hw_queue_to_node(&set->map[HCTX_TYPE_DEFAULT], i);





  if (hctxs[i] && (hctxs[i]->numa_node == node))
   continue;

  hctx = blk_mq_alloc_and_init_hctx(set, q, i, node);
  if (hctx) {
   if (hctxs[i])
    blk_mq_exit_hctx(q, set, hctxs[i], i);
   hctxs[i] = hctx;
  } else {
   if (hctxs[i])
    pr_warn("Allocate new hctx on node %d fails,						fallback to previous one on node %d\n",

      node, hctxs[i]->numa_node);
   else
    break;
  }
 }




 if (i != set->nr_hw_queues) {
  j = q->nr_hw_queues;
  end = i;
 } else {
  j = i;
  end = q->nr_hw_queues;
  q->nr_hw_queues = set->nr_hw_queues;
 }

 for (; j < end; j++) {
  struct blk_mq_hw_ctx *hctx = hctxs[j];

  if (hctx) {
   if (hctx->tags)
    blk_mq_free_map_and_requests(set, j);
   blk_mq_exit_hctx(q, set, hctx, j);
   hctxs[j] = ((void*)0);
  }
 }
 mutex_unlock(&q->sysfs_lock);
}
