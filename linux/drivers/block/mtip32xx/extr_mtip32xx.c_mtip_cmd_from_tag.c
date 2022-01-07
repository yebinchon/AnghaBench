
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtip_cmd {int dummy; } ;
struct driver_data {TYPE_1__* queue; } ;
struct blk_mq_hw_ctx {int tags; } ;
struct TYPE_2__ {struct blk_mq_hw_ctx** queue_hw_ctx; } ;


 struct mtip_cmd* blk_mq_rq_to_pdu (int ) ;
 int blk_mq_tag_to_rq (int ,unsigned int) ;

__attribute__((used)) static struct mtip_cmd *mtip_cmd_from_tag(struct driver_data *dd,
       unsigned int tag)
{
 struct blk_mq_hw_ctx *hctx = dd->queue->queue_hw_ctx[0];

 return blk_mq_rq_to_pdu(blk_mq_tag_to_rq(hctx->tags, tag));
}
