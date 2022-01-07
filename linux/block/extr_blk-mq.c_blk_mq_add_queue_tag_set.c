
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int tag_set_list; } ;
struct blk_mq_tag_set {int flags; int tag_list_lock; int tag_list; } ;


 int BLK_MQ_F_TAG_SHARED ;
 int blk_mq_update_tag_set_depth (struct blk_mq_tag_set*,int) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_set_hctx_shared (struct request_queue*,int) ;

__attribute__((used)) static void blk_mq_add_queue_tag_set(struct blk_mq_tag_set *set,
         struct request_queue *q)
{
 mutex_lock(&set->tag_list_lock);




 if (!list_empty(&set->tag_list) &&
     !(set->flags & BLK_MQ_F_TAG_SHARED)) {
  set->flags |= BLK_MQ_F_TAG_SHARED;

  blk_mq_update_tag_set_depth(set, 1);
 }
 if (set->flags & BLK_MQ_F_TAG_SHARED)
  queue_set_hctx_shared(q, 1);
 list_add_tail_rcu(&q->tag_set_list, &set->tag_list);

 mutex_unlock(&set->tag_list_lock);
}
