
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_blk_vq {int vq; int lock; } ;
struct virtio_blk {struct virtio_blk_vq* vqs; } ;
struct blk_mq_hw_ctx {size_t queue_num; TYPE_1__* queue; } ;
struct TYPE_2__ {struct virtio_blk* queuedata; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int virtqueue_kick_prepare (int ) ;
 int virtqueue_notify (int ) ;

__attribute__((used)) static void virtio_commit_rqs(struct blk_mq_hw_ctx *hctx)
{
 struct virtio_blk *vblk = hctx->queue->queuedata;
 struct virtio_blk_vq *vq = &vblk->vqs[hctx->queue_num];
 bool kick;

 spin_lock_irq(&vq->lock);
 kick = virtqueue_kick_prepare(vq->vq);
 spin_unlock_irq(&vq->lock);

 if (kick)
  virtqueue_notify(vq->vq);
}
