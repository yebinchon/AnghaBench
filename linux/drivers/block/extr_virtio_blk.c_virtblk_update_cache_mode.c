
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtio_device {struct virtio_blk* priv; } ;
struct virtio_blk {TYPE_1__* disk; } ;
struct TYPE_2__ {int queue; } ;


 int blk_queue_write_cache (int ,int ,int) ;
 int revalidate_disk (TYPE_1__*) ;
 int virtblk_get_cache_mode (struct virtio_device*) ;

__attribute__((used)) static void virtblk_update_cache_mode(struct virtio_device *vdev)
{
 u8 writeback = virtblk_get_cache_mode(vdev);
 struct virtio_blk *vblk = vdev->priv;

 blk_queue_write_cache(vblk->disk->queue, writeback, 0);
 revalidate_disk(vblk->disk);
}
