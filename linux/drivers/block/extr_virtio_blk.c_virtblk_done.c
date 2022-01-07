
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtqueue {int index; TYPE_3__* vdev; } ;
struct virtio_blk {TYPE_2__* vqs; TYPE_1__* disk; } ;
struct virtblk_req {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_6__ {struct virtio_blk* priv; } ;
struct TYPE_5__ {int lock; int vq; } ;
struct TYPE_4__ {int queue; } ;


 int blk_mq_complete_request (struct request*) ;
 struct request* blk_mq_rq_from_pdu (struct virtblk_req*) ;
 int blk_mq_start_stopped_hw_queues (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_enable_cb (struct virtqueue*) ;
 struct virtblk_req* virtqueue_get_buf (int ,unsigned int*) ;
 int virtqueue_is_broken (struct virtqueue*) ;

__attribute__((used)) static void virtblk_done(struct virtqueue *vq)
{
 struct virtio_blk *vblk = vq->vdev->priv;
 bool req_done = 0;
 int qid = vq->index;
 struct virtblk_req *vbr;
 unsigned long flags;
 unsigned int len;

 spin_lock_irqsave(&vblk->vqs[qid].lock, flags);
 do {
  virtqueue_disable_cb(vq);
  while ((vbr = virtqueue_get_buf(vblk->vqs[qid].vq, &len)) != ((void*)0)) {
   struct request *req = blk_mq_rq_from_pdu(vbr);

   blk_mq_complete_request(req);
   req_done = 1;
  }
  if (unlikely(virtqueue_is_broken(vq)))
   break;
 } while (!virtqueue_enable_cb(vq));


 if (req_done)
  blk_mq_start_stopped_hw_queues(vblk->disk->queue, 1);
 spin_unlock_irqrestore(&vblk->vqs[qid].lock, flags);
}
