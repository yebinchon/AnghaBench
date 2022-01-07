
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct ps3_storage_device* queuedata; } ;
struct ps3disk_private {int lock; } ;
struct ps3_storage_device {int sbd; } ;
struct blk_mq_queue_data {int rq; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
typedef int blk_status_t ;


 int blk_mq_start_request (int ) ;
 struct ps3disk_private* ps3_system_bus_get_drvdata (int *) ;
 int ps3disk_do_request (struct ps3_storage_device*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static blk_status_t ps3disk_queue_rq(struct blk_mq_hw_ctx *hctx,
         const struct blk_mq_queue_data *bd)
{
 struct request_queue *q = hctx->queue;
 struct ps3_storage_device *dev = q->queuedata;
 struct ps3disk_private *priv = ps3_system_bus_get_drvdata(&dev->sbd);
 blk_status_t ret;

 blk_mq_start_request(bd->rq);

 spin_lock_irq(&priv->lock);
 ret = ps3disk_do_request(dev, bd->rq);
 spin_unlock_irq(&priv->lock);

 return ret;
}
