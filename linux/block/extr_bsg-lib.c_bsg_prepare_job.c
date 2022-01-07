
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {scalar_t__ bio; int timeout; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int sg_list; } ;
struct bsg_job {int result; TYPE_1__ request_payload; int kref; struct device* dev; struct request* bidi_rq; TYPE_1__ reply_payload; int timeout; } ;


 int ENOMEM ;
 struct bsg_job* blk_mq_rq_to_pdu (struct request*) ;
 int bsg_map_buffer (TYPE_1__*,struct request*) ;
 int get_device (struct device*) ;
 int kfree (int ) ;
 int kref_init (int *) ;

__attribute__((used)) static bool bsg_prepare_job(struct device *dev, struct request *req)
{
 struct bsg_job *job = blk_mq_rq_to_pdu(req);
 int ret;

 job->timeout = req->timeout;

 if (req->bio) {
  ret = bsg_map_buffer(&job->request_payload, req);
  if (ret)
   goto failjob_rls_job;
 }
 if (job->bidi_rq) {
  ret = bsg_map_buffer(&job->reply_payload, job->bidi_rq);
  if (ret)
   goto failjob_rls_rqst_payload;
 }
 job->dev = dev;

 get_device(job->dev);
 kref_init(&job->kref);
 return 1;

failjob_rls_rqst_payload:
 kfree(job->request_payload.sg_list);
failjob_rls_job:
 job->result = -ENOMEM;
 return 0;
}
