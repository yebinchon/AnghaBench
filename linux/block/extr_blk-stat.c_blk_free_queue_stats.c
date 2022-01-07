
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_queue_stats {int callbacks; } ;


 int WARN_ON (int) ;
 int kfree (struct blk_queue_stats*) ;
 int list_empty (int *) ;

void blk_free_queue_stats(struct blk_queue_stats *stats)
{
 if (!stats)
  return;

 WARN_ON(!list_empty(&stats->callbacks));

 kfree(stats);
}
