
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdc_port {int tag_set; } ;
struct request_queue {struct vdc_port* queuedata; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 int VDC_TX_RING_SIZE ;
 struct request_queue* blk_mq_init_sq_queue (int *,int *,int ,int ) ;
 int vdc_mq_ops ;

__attribute__((used)) static struct request_queue *init_queue(struct vdc_port *port)
{
 struct request_queue *q;

 q = blk_mq_init_sq_queue(&port->tag_set, &vdc_mq_ops, VDC_TX_RING_SIZE,
     BLK_MQ_F_SHOULD_MERGE);
 if (IS_ERR(q))
  return q;

 q->queuedata = port;
 return q;
}
