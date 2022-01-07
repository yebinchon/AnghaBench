
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_queue_stats {int enable_accounting; int lock; int callbacks; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct blk_queue_stats* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct blk_queue_stats *blk_alloc_queue_stats(void)
{
 struct blk_queue_stats *stats;

 stats = kmalloc(sizeof(*stats), GFP_KERNEL);
 if (!stats)
  return ((void*)0);

 INIT_LIST_HEAD(&stats->callbacks);
 spin_lock_init(&stats->lock);
 stats->enable_accounting = 0;

 return stats;
}
