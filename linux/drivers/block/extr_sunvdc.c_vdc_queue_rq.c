
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vio_dring_state {int dummy; } ;
struct TYPE_4__ {int lock; struct vio_dring_state* drings; } ;
struct vdc_port {int drain; TYPE_2__ vio; } ;
struct blk_mq_queue_data {int rq; } ;
struct blk_mq_hw_ctx {TYPE_1__* queue; } ;
typedef int blk_status_t ;
struct TYPE_3__ {struct vdc_port* queuedata; } ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 size_t VIO_DRIVER_TX_RING ;
 scalar_t__ __send_request (int ) ;
 int blk_mq_start_request (int ) ;
 int blk_mq_stop_hw_queue (struct blk_mq_hw_ctx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int vdc_tx_dring_avail (struct vio_dring_state*) ;

__attribute__((used)) static blk_status_t vdc_queue_rq(struct blk_mq_hw_ctx *hctx,
     const struct blk_mq_queue_data *bd)
{
 struct vdc_port *port = hctx->queue->queuedata;
 struct vio_dring_state *dr;
 unsigned long flags;

 dr = &port->vio.drings[VIO_DRIVER_TX_RING];

 blk_mq_start_request(bd->rq);

 spin_lock_irqsave(&port->vio.lock, flags);




 if (unlikely(port->drain)) {
  spin_unlock_irqrestore(&port->vio.lock, flags);
  return BLK_STS_IOERR;
 }

 if (unlikely(vdc_tx_dring_avail(dr) < 1)) {
  spin_unlock_irqrestore(&port->vio.lock, flags);
  blk_mq_stop_hw_queue(hctx);
  return BLK_STS_DEV_RESOURCE;
 }

 if (__send_request(bd->rq) < 0) {
  spin_unlock_irqrestore(&port->vio.lock, flags);
  return BLK_STS_IOERR;
 }

 spin_unlock_irqrestore(&port->vio.lock, flags);
 return BLK_STS_OK;
}
