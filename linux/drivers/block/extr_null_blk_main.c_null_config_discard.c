
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nullb {TYPE_3__* q; TYPE_2__* dev; } ;
struct TYPE_5__ {int discard_alignment; int discard_granularity; } ;
struct TYPE_7__ {TYPE_1__ limits; } ;
struct TYPE_6__ {int discard; int blocksize; } ;


 int QUEUE_FLAG_DISCARD ;
 int UINT_MAX ;
 int blk_queue_flag_set (int ,TYPE_3__*) ;
 int blk_queue_max_discard_sectors (TYPE_3__*,int) ;

__attribute__((used)) static void null_config_discard(struct nullb *nullb)
{
 if (nullb->dev->discard == 0)
  return;
 nullb->q->limits.discard_granularity = nullb->dev->blocksize;
 nullb->q->limits.discard_alignment = nullb->dev->blocksize;
 blk_queue_max_discard_sectors(nullb->q, UINT_MAX >> 9);
 blk_queue_flag_set(QUEUE_FLAG_DISCARD, nullb->q);
}
