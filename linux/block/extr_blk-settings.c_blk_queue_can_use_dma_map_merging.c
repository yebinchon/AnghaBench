
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct device {int dummy; } ;


 int blk_queue_virt_boundary (struct request_queue*,unsigned long) ;
 unsigned long dma_get_merge_boundary (struct device*) ;

bool blk_queue_can_use_dma_map_merging(struct request_queue *q,
           struct device *dev)
{
 unsigned long boundary = dma_get_merge_boundary(dev);

 if (!boundary)
  return 0;


 blk_queue_virt_boundary(q, boundary);

 return 1;
}
