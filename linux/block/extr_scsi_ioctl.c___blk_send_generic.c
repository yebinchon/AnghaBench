
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int timeout; } ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {int* cmd; int cmd_len; scalar_t__ result; } ;


 int BLK_DEFAULT_SG_TIMEOUT ;
 int EIO ;
 scalar_t__ IS_ERR (struct request*) ;
 int PTR_ERR (struct request*) ;
 int REQ_OP_SCSI_OUT ;
 int blk_execute_rq (struct request_queue*,struct gendisk*,struct request*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;
 TYPE_1__* scsi_req (struct request*) ;

__attribute__((used)) static int __blk_send_generic(struct request_queue *q, struct gendisk *bd_disk,
         int cmd, int data)
{
 struct request *rq;
 int err;

 rq = blk_get_request(q, REQ_OP_SCSI_OUT, 0);
 if (IS_ERR(rq))
  return PTR_ERR(rq);
 rq->timeout = BLK_DEFAULT_SG_TIMEOUT;
 scsi_req(rq)->cmd[0] = cmd;
 scsi_req(rq)->cmd[4] = data;
 scsi_req(rq)->cmd_len = 6;
 blk_execute_rq(q, bd_disk, rq, 0);
 err = scsi_req(rq)->result ? -EIO : 0;
 blk_put_request(rq);

 return err;
}
