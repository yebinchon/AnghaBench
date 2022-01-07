
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct nbd_device {scalar_t__ destroy_complete; int flags; int tag_set; struct gendisk* disk; } ;
struct gendisk {int * private_data; struct request_queue* queue; } ;


 int NBD_DESTROY_ON_DISCONNECT ;
 int blk_cleanup_queue (struct request_queue*) ;
 int blk_mq_free_tag_set (int *) ;
 int complete (scalar_t__) ;
 int del_gendisk (struct gendisk*) ;
 int kfree (struct nbd_device*) ;
 int put_disk (struct gendisk*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nbd_dev_remove(struct nbd_device *nbd)
{
 struct gendisk *disk = nbd->disk;
 struct request_queue *q;

 if (disk) {
  q = disk->queue;
  del_gendisk(disk);
  blk_cleanup_queue(q);
  blk_mq_free_tag_set(&nbd->tag_set);
  disk->private_data = ((void*)0);
  put_disk(disk);
 }







 if (test_bit(NBD_DESTROY_ON_DISCONNECT, &nbd->flags) && nbd->destroy_complete)
  complete(nbd->destroy_complete);

 kfree(nbd);
}
