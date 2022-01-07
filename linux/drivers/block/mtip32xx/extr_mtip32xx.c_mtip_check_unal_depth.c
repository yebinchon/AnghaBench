
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct mtip_cmd {int unaligned; } ;
struct driver_data {TYPE_1__* port; int unal_qdepth; } ;
struct blk_mq_hw_ctx {TYPE_2__* queue; } ;
struct TYPE_4__ {struct driver_data* queuedata; } ;
struct TYPE_3__ {int cmd_slot_unal; } ;


 scalar_t__ READ ;
 scalar_t__ atomic_dec_if_positive (int *) ;
 struct mtip_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static bool mtip_check_unal_depth(struct blk_mq_hw_ctx *hctx,
      struct request *rq)
{
 struct driver_data *dd = hctx->queue->queuedata;
 struct mtip_cmd *cmd = blk_mq_rq_to_pdu(rq);

 if (rq_data_dir(rq) == READ || !dd->unal_qdepth)
  return 0;





 if (blk_rq_sectors(rq) <= 64) {
  if ((blk_rq_pos(rq) & 7) || (blk_rq_sectors(rq) & 7))
   cmd->unaligned = 1;
 }

 if (cmd->unaligned && atomic_dec_if_positive(&dd->port->cmd_slot_unal) >= 0)
  return 1;

 return 0;
}
