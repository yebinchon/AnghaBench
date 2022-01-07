
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {TYPE_2__* q; } ;
struct mtip_cmd {int status; int unaligned; int direction; int scatter_ents; int sg; } ;
struct driver_data {TYPE_1__* port; TYPE_3__* pdev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct driver_data* queuedata; } ;
struct TYPE_4__ {int cmd_slot_unal; } ;


 int atomic_inc (int *) ;
 int blk_mq_end_request (struct request*,int ) ;
 struct mtip_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void mtip_softirq_done_fn(struct request *rq)
{
 struct mtip_cmd *cmd = blk_mq_rq_to_pdu(rq);
 struct driver_data *dd = rq->q->queuedata;


 dma_unmap_sg(&dd->pdev->dev, cmd->sg, cmd->scatter_ents,
       cmd->direction);

 if (unlikely(cmd->unaligned))
  atomic_inc(&dd->port->cmd_slot_unal);

 blk_mq_end_request(rq, cmd->status);
}
