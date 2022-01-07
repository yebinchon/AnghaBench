
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_cardinfo {int major; TYPE_1__* queue; int * gendisk; } ;
struct TYPE_2__ {int * queuedata; } ;


 int DRIVER_NAME ;
 int blk_cleanup_queue (TYPE_1__*) ;
 int enable_blkdev ;
 int put_disk (int *) ;
 int unregister_blkdev (int ,int ) ;

void rsxx_destroy_dev(struct rsxx_cardinfo *card)
{
 if (!enable_blkdev)
  return;

 put_disk(card->gendisk);
 card->gendisk = ((void*)0);

 blk_cleanup_queue(card->queue);
 card->queue->queuedata = ((void*)0);
 unregister_blkdev(card->major, DRIVER_NAME);
}
