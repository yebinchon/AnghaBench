
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbd_cmd {int lock; int flags; } ;
struct blk_mq_queue_data {int rq; } ;
struct blk_mq_hw_ctx {int queue_num; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int NBD_CMD_REQUEUED ;
 struct nbd_cmd* blk_mq_rq_to_pdu (int ) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nbd_handle_cmd (struct nbd_cmd*,int ) ;

__attribute__((used)) static blk_status_t nbd_queue_rq(struct blk_mq_hw_ctx *hctx,
   const struct blk_mq_queue_data *bd)
{
 struct nbd_cmd *cmd = blk_mq_rq_to_pdu(bd->rq);
 int ret;
 mutex_lock(&cmd->lock);
 clear_bit(NBD_CMD_REQUEUED, &cmd->flags);






 ret = nbd_handle_cmd(cmd, hctx->queue_num);
 if (ret < 0)
  ret = BLK_STS_IOERR;
 else if (!ret)
  ret = BLK_STS_OK;
 mutex_unlock(&cmd->lock);

 return ret;
}
