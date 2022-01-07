
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* stats; } ;
struct blk_stat_callback {int timer; int list; } ;
struct TYPE_2__ {int lock; int enable_accounting; int callbacks; } ;


 int QUEUE_FLAG_STATS ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int del_timer_sync (int *) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void blk_stat_remove_callback(struct request_queue *q,
         struct blk_stat_callback *cb)
{
 spin_lock(&q->stats->lock);
 list_del_rcu(&cb->list);
 if (list_empty(&q->stats->callbacks) && !q->stats->enable_accounting)
  blk_queue_flag_clear(QUEUE_FLAG_STATS, q);
 spin_unlock(&q->stats->lock);

 del_timer_sync(&cb->timer);
}
