
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct vdc_port {int drain; TYPE_2__ vio; TYPE_1__* disk; } ;
struct request_queue {int dummy; } ;
struct TYPE_3__ {struct request_queue* queue; } ;


 int blk_mq_freeze_queue (struct request_queue*) ;
 int blk_mq_quiesce_queue (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_mq_unquiesce_queue (struct request_queue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void vdc_queue_drain(struct vdc_port *port)
{
 struct request_queue *q = port->disk->queue;





 port->drain = 1;
 spin_unlock_irq(&port->vio.lock);

 blk_mq_freeze_queue(q);
 blk_mq_quiesce_queue(q);

 spin_lock_irq(&port->vio.lock);
 port->drain = 0;
 blk_mq_unquiesce_queue(q);
 blk_mq_unfreeze_queue(q);
}
