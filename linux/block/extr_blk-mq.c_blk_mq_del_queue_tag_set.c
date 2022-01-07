
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int tag_set_list; struct blk_mq_tag_set* tag_set; } ;
struct blk_mq_tag_set {int tag_list_lock; int flags; int tag_list; } ;


 int BLK_MQ_F_TAG_SHARED ;
 int INIT_LIST_HEAD (int *) ;
 int blk_mq_update_tag_set_depth (struct blk_mq_tag_set*,int) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_is_singular (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void blk_mq_del_queue_tag_set(struct request_queue *q)
{
 struct blk_mq_tag_set *set = q->tag_set;

 mutex_lock(&set->tag_list_lock);
 list_del_rcu(&q->tag_set_list);
 if (list_is_singular(&set->tag_list)) {

  set->flags &= ~BLK_MQ_F_TAG_SHARED;

  blk_mq_update_tag_set_depth(set, 0);
 }
 mutex_unlock(&set->tag_list_lock);
 INIT_LIST_HEAD(&q->tag_set_list);
}
