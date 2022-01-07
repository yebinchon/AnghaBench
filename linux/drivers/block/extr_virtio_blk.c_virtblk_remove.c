
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct virtio_device {TYPE_2__* config; struct virtio_blk* priv; } ;
struct virtio_blk {int index; struct virtio_blk* vqs; TYPE_3__* disk; int tag_set; int config_work; } ;
struct TYPE_7__ {int kref; } ;
struct TYPE_10__ {TYPE_1__ kobj; } ;
struct TYPE_9__ {int queue; } ;
struct TYPE_8__ {int (* del_vqs ) (struct virtio_device*) ;int (* reset ) (struct virtio_device*) ;} ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (TYPE_3__*) ;
 TYPE_4__* disk_to_dev (TYPE_3__*) ;
 int flush_work (int *) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct virtio_blk*) ;
 int kref_read (int *) ;
 int put_disk (TYPE_3__*) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;
 int vd_index_ida ;

__attribute__((used)) static void virtblk_remove(struct virtio_device *vdev)
{
 struct virtio_blk *vblk = vdev->priv;
 int index = vblk->index;
 int refc;


 flush_work(&vblk->config_work);

 del_gendisk(vblk->disk);
 blk_cleanup_queue(vblk->disk->queue);

 blk_mq_free_tag_set(&vblk->tag_set);


 vdev->config->reset(vdev);

 refc = kref_read(&disk_to_dev(vblk->disk)->kobj.kref);
 put_disk(vblk->disk);
 vdev->config->del_vqs(vdev);
 kfree(vblk->vqs);
 kfree(vblk);


 if (refc == 1)
  ida_simple_remove(&vd_index_ida, index);
}
