
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nbd_cmd {int flags; } ;


 int NBD_CMD_REQUEUED ;
 int blk_mq_requeue_request (struct request*,int) ;
 struct request* blk_mq_rq_from_pdu (struct nbd_cmd*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void nbd_requeue_cmd(struct nbd_cmd *cmd)
{
 struct request *req = blk_mq_rq_from_pdu(cmd);

 if (!test_and_set_bit(NBD_CMD_REQUEUED, &cmd->flags))
  blk_mq_requeue_request(req, 1);
}
