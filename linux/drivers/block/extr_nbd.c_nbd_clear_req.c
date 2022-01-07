
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nbd_cmd {int lock; int status; } ;


 int BLK_STS_IOERR ;
 int blk_mq_complete_request (struct request*) ;
 struct nbd_cmd* blk_mq_rq_to_pdu (struct request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool nbd_clear_req(struct request *req, void *data, bool reserved)
{
 struct nbd_cmd *cmd = blk_mq_rq_to_pdu(req);

 mutex_lock(&cmd->lock);
 cmd->status = BLK_STS_IOERR;
 mutex_unlock(&cmd->lock);

 blk_mq_complete_request(req);
 return 1;
}
