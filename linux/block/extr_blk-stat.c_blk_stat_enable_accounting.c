
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* stats; } ;
struct TYPE_2__ {int enable_accounting; int lock; } ;


 int QUEUE_FLAG_STATS ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void blk_stat_enable_accounting(struct request_queue *q)
{
 spin_lock(&q->stats->lock);
 q->stats->enable_accounting = 1;
 blk_queue_flag_set(QUEUE_FLAG_STATS, q);
 spin_unlock(&q->stats->lock);
}
