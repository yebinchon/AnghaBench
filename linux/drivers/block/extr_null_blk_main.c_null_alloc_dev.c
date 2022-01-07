
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int size; int zone_nr_conv; int zone_size; int zoned; int use_per_node_hctx; int blocking; int hw_queue_depth; int irqmode; int blocksize; int queue_mode; int home_node; int submit_queues; int completion_nsec; int badblocks; int cache; int data; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_RADIX_TREE (int *,int ) ;
 scalar_t__ badblocks_init (int *,int ) ;
 int g_blocking ;
 int g_bs ;
 int g_completion_nsec ;
 int g_gb ;
 int g_home_node ;
 int g_hw_queue_depth ;
 int g_irqmode ;
 int g_queue_mode ;
 int g_submit_queues ;
 int g_use_per_node_hctx ;
 int g_zone_nr_conv ;
 int g_zone_size ;
 int g_zoned ;
 int kfree (struct nullb_device*) ;
 struct nullb_device* kzalloc (int,int ) ;

__attribute__((used)) static struct nullb_device *null_alloc_dev(void)
{
 struct nullb_device *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);
 INIT_RADIX_TREE(&dev->data, GFP_ATOMIC);
 INIT_RADIX_TREE(&dev->cache, GFP_ATOMIC);
 if (badblocks_init(&dev->badblocks, 0)) {
  kfree(dev);
  return ((void*)0);
 }

 dev->size = g_gb * 1024;
 dev->completion_nsec = g_completion_nsec;
 dev->submit_queues = g_submit_queues;
 dev->home_node = g_home_node;
 dev->queue_mode = g_queue_mode;
 dev->blocksize = g_bs;
 dev->irqmode = g_irqmode;
 dev->hw_queue_depth = g_hw_queue_depth;
 dev->blocking = g_blocking;
 dev->use_per_node_hctx = g_use_per_node_hctx;
 dev->zoned = g_zoned;
 dev->zone_size = g_zone_size;
 dev->zone_nr_conv = g_zone_nr_conv;
 return dev;
}
