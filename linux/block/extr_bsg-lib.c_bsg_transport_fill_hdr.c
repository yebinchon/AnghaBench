
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct sg_io_v4 {scalar_t__ din_xfer_len; int din_xferp; scalar_t__ dout_xfer_len; int request_len; int request; } ;
struct request {int q; } ;
struct bsg_job {TYPE_1__* request; TYPE_1__* bidi_rq; int * bidi_bio; int request_len; } ;
typedef int fmode_t ;
struct TYPE_8__ {int * bio; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int REQ_OP_SCSI_IN ;
 TYPE_1__* blk_get_request (int ,int ,int ) ;
 struct bsg_job* blk_mq_rq_to_pdu (struct request*) ;
 int blk_put_request (TYPE_1__*) ;
 int blk_rq_map_user (int ,TYPE_1__*,int *,int ,scalar_t__,int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* memdup_user (int ,int ) ;
 int uptr64 (int ) ;

__attribute__((used)) static int bsg_transport_fill_hdr(struct request *rq, struct sg_io_v4 *hdr,
  fmode_t mode)
{
 struct bsg_job *job = blk_mq_rq_to_pdu(rq);
 int ret;

 job->request_len = hdr->request_len;
 job->request = memdup_user(uptr64(hdr->request), hdr->request_len);
 if (IS_ERR(job->request))
  return PTR_ERR(job->request);

 if (hdr->dout_xfer_len && hdr->din_xfer_len) {
  job->bidi_rq = blk_get_request(rq->q, REQ_OP_SCSI_IN, 0);
  if (IS_ERR(job->bidi_rq)) {
   ret = PTR_ERR(job->bidi_rq);
   goto out;
  }

  ret = blk_rq_map_user(rq->q, job->bidi_rq, ((void*)0),
    uptr64(hdr->din_xferp), hdr->din_xfer_len,
    GFP_KERNEL);
  if (ret)
   goto out_free_bidi_rq;

  job->bidi_bio = job->bidi_rq->bio;
 } else {
  job->bidi_rq = ((void*)0);
  job->bidi_bio = ((void*)0);
 }

 return 0;

out_free_bidi_rq:
 if (job->bidi_rq)
  blk_put_request(job->bidi_rq);
out:
 kfree(job->request);
 return ret;
}
