
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_request_context {scalar_t__ state; scalar_t__ n_sg; int status; } ;
struct skd_device {int dummy; } ;
struct request {int dummy; } ;


 int BLK_STS_IOERR ;
 scalar_t__ SKD_REQ_STATE_BUSY ;
 scalar_t__ SKD_REQ_STATE_IDLE ;
 int blk_mq_complete_request (struct request*) ;
 struct skd_request_context* blk_mq_rq_to_pdu (struct request*) ;
 int skd_log_skreq (struct skd_device* const,struct skd_request_context*,char*) ;
 int skd_postop_sg_list (struct skd_device* const,struct skd_request_context*) ;

__attribute__((used)) static bool skd_recover_request(struct request *req, void *data, bool reserved)
{
 struct skd_device *const skdev = data;
 struct skd_request_context *skreq = blk_mq_rq_to_pdu(req);

 if (skreq->state != SKD_REQ_STATE_BUSY)
  return 1;

 skd_log_skreq(skdev, skreq, "recover");


 if (skreq->n_sg > 0)
  skd_postop_sg_list(skdev, skreq);

 skreq->state = SKD_REQ_STATE_IDLE;
 skreq->status = BLK_STS_IOERR;
 blk_mq_complete_request(req);
 return 1;
}
