
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int gfp_t ;


 int NUMA_NO_NODE ;
 struct request_queue* blk_alloc_queue_node (int ,int ) ;

struct request_queue *blk_alloc_queue(gfp_t gfp_mask)
{
 return blk_alloc_queue_node(gfp_mask, NUMA_NO_NODE);
}
