
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct mtip_cmd {int command_dma; int command; } ;
struct driver_data {TYPE_1__* pdev; } ;
struct blk_mq_tag_set {struct driver_data* driver_data; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_DMA_ALLOC_SZ ;
 struct mtip_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void mtip_free_cmd(struct blk_mq_tag_set *set, struct request *rq,
     unsigned int hctx_idx)
{
 struct driver_data *dd = set->driver_data;
 struct mtip_cmd *cmd = blk_mq_rq_to_pdu(rq);

 if (!cmd->command)
  return;

 dma_free_coherent(&dd->pdev->dev, CMD_DMA_ALLOC_SZ, cmd->command,
     cmd->command_dma);
}
