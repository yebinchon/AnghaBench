
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct bio* bio; } ;
struct loop_cmd {scalar_t__ ret; scalar_t__ use_aio; } ;
struct bio {struct bio* bi_next; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 scalar_t__ REQ_OP_READ ;
 int blk_mq_end_request (struct request*,int ) ;
 int blk_mq_requeue_request (struct request*,int) ;
 struct loop_cmd* blk_mq_rq_to_pdu (struct request*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int blk_update_request (struct request*,int ,scalar_t__) ;
 scalar_t__ req_op (struct request*) ;
 int zero_fill_bio (struct bio*) ;

__attribute__((used)) static void lo_complete_rq(struct request *rq)
{
 struct loop_cmd *cmd = blk_mq_rq_to_pdu(rq);
 blk_status_t ret = BLK_STS_OK;

 if (!cmd->use_aio || cmd->ret < 0 || cmd->ret == blk_rq_bytes(rq) ||
     req_op(rq) != REQ_OP_READ) {
  if (cmd->ret < 0)
   ret = BLK_STS_IOERR;
  goto end_io;
 }





 if (cmd->ret) {
  blk_update_request(rq, BLK_STS_OK, cmd->ret);
  cmd->ret = 0;
  blk_mq_requeue_request(rq, 1);
 } else {
  if (cmd->use_aio) {
   struct bio *bio = rq->bio;

   while (bio) {
    zero_fill_bio(bio);
    bio = bio->bi_next;
   }
  }
  ret = BLK_STS_IOERR;
end_io:
  blk_mq_end_request(rq, ret);
 }
}
