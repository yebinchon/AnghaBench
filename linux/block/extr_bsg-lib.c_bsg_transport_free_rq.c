
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bsg_job {int request; scalar_t__ bidi_rq; int bidi_bio; } ;


 struct bsg_job* blk_mq_rq_to_pdu (struct request*) ;
 int blk_put_request (scalar_t__) ;
 int blk_rq_unmap_user (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void bsg_transport_free_rq(struct request *rq)
{
 struct bsg_job *job = blk_mq_rq_to_pdu(rq);

 if (job->bidi_rq) {
  blk_rq_unmap_user(job->bidi_bio);
  blk_put_request(job->bidi_rq);
 }

 kfree(job->request);
}
