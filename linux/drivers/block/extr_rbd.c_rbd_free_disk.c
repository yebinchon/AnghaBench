
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_device {TYPE_1__* disk; int tag_set; } ;
struct TYPE_2__ {int queue; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int put_disk (TYPE_1__*) ;

__attribute__((used)) static void rbd_free_disk(struct rbd_device *rbd_dev)
{
 blk_cleanup_queue(rbd_dev->disk->queue);
 blk_mq_free_tag_set(&rbd_dev->tag_set);
 put_disk(rbd_dev->disk);
 rbd_dev->disk = ((void*)0);
}
