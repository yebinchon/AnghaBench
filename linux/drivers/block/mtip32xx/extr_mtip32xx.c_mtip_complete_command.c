
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mtip_cmd {int status; } ;
typedef int blk_status_t ;


 int blk_mq_complete_request (struct request*) ;
 struct request* blk_mq_rq_from_pdu (struct mtip_cmd*) ;

__attribute__((used)) static void mtip_complete_command(struct mtip_cmd *cmd, blk_status_t status)
{
 struct request *req = blk_mq_rq_from_pdu(cmd);

 cmd->status = status;
 blk_mq_complete_request(req);
}
