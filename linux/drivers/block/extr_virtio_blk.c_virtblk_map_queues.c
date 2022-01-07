
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_blk {int vdev; } ;
struct blk_mq_tag_set {int * map; struct virtio_blk* driver_data; } ;


 size_t HCTX_TYPE_DEFAULT ;
 int blk_mq_virtio_map_queues (int *,int ,int ) ;

__attribute__((used)) static int virtblk_map_queues(struct blk_mq_tag_set *set)
{
 struct virtio_blk *vblk = set->driver_data;

 return blk_mq_virtio_map_queues(&set->map[HCTX_TYPE_DEFAULT],
     vblk->vdev, 0);
}
