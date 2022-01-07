
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mtip_cmd {int status; } ;


 int BLK_STS_IOERR ;
 int blk_mq_complete_request (struct request*) ;
 struct mtip_cmd* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static bool mtip_no_dev_cleanup(struct request *rq, void *data, bool reserv)
{
 struct mtip_cmd *cmd = blk_mq_rq_to_pdu(rq);

 cmd->status = BLK_STS_IOERR;
 blk_mq_complete_request(rq);
 return 1;
}
