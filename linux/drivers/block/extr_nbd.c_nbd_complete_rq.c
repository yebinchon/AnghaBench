
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nbd_cmd {scalar_t__ status; int nbd; } ;


 int blk_mq_end_request (struct request*,scalar_t__) ;
 struct nbd_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int dev_dbg (int ,char*,struct request*,char*) ;
 int nbd_to_dev (int ) ;

__attribute__((used)) static void nbd_complete_rq(struct request *req)
{
 struct nbd_cmd *cmd = blk_mq_rq_to_pdu(req);

 dev_dbg(nbd_to_dev(cmd->nbd), "request %p: %s\n", req,
  cmd->status ? "failed" : "done");

 blk_mq_end_request(req, cmd->status);
}
