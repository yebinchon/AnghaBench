
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb_queue {int dummy; } ;
struct nullb {TYPE_1__* dev; int queue_depth; int queues; } ;
struct TYPE_2__ {int hw_queue_depth; int submit_queues; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int setup_queues(struct nullb *nullb)
{
 nullb->queues = kcalloc(nullb->dev->submit_queues,
    sizeof(struct nullb_queue),
    GFP_KERNEL);
 if (!nullb->queues)
  return -ENOMEM;

 nullb->queue_depth = nullb->dev->hw_queue_depth;

 return 0;
}
