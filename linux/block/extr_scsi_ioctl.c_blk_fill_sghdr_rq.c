
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_hdr {int timeout; int cmd_len; int cmdp; } ;
struct scsi_request {int cmd_len; int cmd; } ;
struct request_queue {scalar_t__ sg_timeout; } ;
struct request {scalar_t__ timeout; } ;
typedef int fmode_t ;


 scalar_t__ BLK_DEFAULT_SG_TIMEOUT ;
 scalar_t__ BLK_MIN_SG_TIMEOUT ;
 int EFAULT ;
 int EPERM ;
 scalar_t__ blk_verify_command (int ,int ) ;
 scalar_t__ copy_from_user (int ,int ,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct scsi_request* scsi_req (struct request*) ;

__attribute__((used)) static int blk_fill_sghdr_rq(struct request_queue *q, struct request *rq,
        struct sg_io_hdr *hdr, fmode_t mode)
{
 struct scsi_request *req = scsi_req(rq);

 if (copy_from_user(req->cmd, hdr->cmdp, hdr->cmd_len))
  return -EFAULT;
 if (blk_verify_command(req->cmd, mode))
  return -EPERM;




 req->cmd_len = hdr->cmd_len;

 rq->timeout = msecs_to_jiffies(hdr->timeout);
 if (!rq->timeout)
  rq->timeout = q->sg_timeout;
 if (!rq->timeout)
  rq->timeout = BLK_DEFAULT_SG_TIMEOUT;
 if (rq->timeout < BLK_MIN_SG_TIMEOUT)
  rq->timeout = BLK_MIN_SG_TIMEOUT;

 return 0;
}
