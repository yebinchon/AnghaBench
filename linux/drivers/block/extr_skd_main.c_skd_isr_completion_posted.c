
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct fit_comp_error_info {int fruc; int qual; int code; int key; } ;
struct fit_completion_entry_v1 {scalar_t__ cycle; size_t tag; scalar_t__ status; int num_returned_bytes; } ;
struct skd_request_context {size_t id; scalar_t__ state; scalar_t__ n_sg; int status; struct fit_comp_error_info err_info; struct fit_completion_entry_v1 completion; } ;
struct TYPE_3__ {int * tags; } ;
struct skd_device {size_t skcomp_ix; scalar_t__ skcomp_cycle; size_t num_req_context; scalar_t__ state; int waitq; TYPE_2__* pdev; TYPE_1__ tag_set; int proto_ver; struct fit_comp_error_info* skerr_table; struct fit_completion_entry_v1* skcomp_table; int lock; } ;
struct request {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int BLK_STS_OK ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 scalar_t__ SAM_STAT_GOOD ;
 int SKD_ASSERT (int) ;
 scalar_t__ SKD_DRVR_STATE_PAUSED ;
 scalar_t__ SKD_DRVR_STATE_PAUSING ;
 size_t SKD_ID_SLOT_AND_TABLE_MASK ;
 size_t SKD_N_COMPLETION_ENTRY ;
 scalar_t__ SKD_REQ_STATE_BUSY ;
 scalar_t__ WARN (int,char*,size_t,size_t) ;
 int WARN_ON_ONCE (struct request*) ;
 size_t be32_to_cpu (int ) ;
 int blk_mq_complete_request (struct request*) ;
 struct skd_request_context* blk_mq_rq_to_pdu (struct request*) ;
 struct request* blk_mq_tag_to_rq (int ,size_t) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,size_t,size_t,size_t) ;
 scalar_t__ likely (int) ;
 int lockdep_assert_held (int *) ;
 int skd_complete_other (struct skd_device*,struct fit_completion_entry_v1*,struct fit_comp_error_info*) ;
 scalar_t__ skd_in_flight (struct skd_device*) ;
 int skd_log_check_status (struct skd_device*,scalar_t__,int ,int ,int ,int ) ;
 int skd_postop_sg_list (struct skd_device*,struct skd_request_context*) ;
 int skd_release_skreq (struct skd_device*,struct skd_request_context*) ;
 int skd_resolve_req_exception (struct skd_device*,struct skd_request_context*,struct request*) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int skd_isr_completion_posted(struct skd_device *skdev,
     int limit, int *enqueued)
{
 struct fit_completion_entry_v1 *skcmp;
 struct fit_comp_error_info *skerr;
 u16 req_id;
 u32 tag;
 u16 hwq = 0;
 struct request *rq;
 struct skd_request_context *skreq;
 u16 cmp_cntxt;
 u8 cmp_status;
 u8 cmp_cycle;
 u32 cmp_bytes;
 int rc = 0;
 int processed = 0;

 lockdep_assert_held(&skdev->lock);

 for (;; ) {
  SKD_ASSERT(skdev->skcomp_ix < SKD_N_COMPLETION_ENTRY);

  skcmp = &skdev->skcomp_table[skdev->skcomp_ix];
  cmp_cycle = skcmp->cycle;
  cmp_cntxt = skcmp->tag;
  cmp_status = skcmp->status;
  cmp_bytes = be32_to_cpu(skcmp->num_returned_bytes);

  skerr = &skdev->skerr_table[skdev->skcomp_ix];

  dev_dbg(&skdev->pdev->dev,
   "cycle=%d ix=%d got cycle=%d cmdctxt=0x%x stat=%d busy=%d rbytes=0x%x proto=%d\n",
   skdev->skcomp_cycle, skdev->skcomp_ix, cmp_cycle,
   cmp_cntxt, cmp_status, skd_in_flight(skdev),
   cmp_bytes, skdev->proto_ver);

  if (cmp_cycle != skdev->skcomp_cycle) {
   dev_dbg(&skdev->pdev->dev, "end of completions\n");
   break;
  }




  skdev->skcomp_ix++;
  if (skdev->skcomp_ix >= SKD_N_COMPLETION_ENTRY) {
   skdev->skcomp_ix = 0;
   skdev->skcomp_cycle++;
  }






  req_id = cmp_cntxt;
  tag = req_id & SKD_ID_SLOT_AND_TABLE_MASK;


  if (tag >= skdev->num_req_context) {



   WARN_ON_ONCE(blk_mq_tag_to_rq(skdev->tag_set.tags[hwq],
            tag));
   skd_complete_other(skdev, skcmp, skerr);
   continue;
  }

  rq = blk_mq_tag_to_rq(skdev->tag_set.tags[hwq], tag);
  if (WARN(!rq, "No request for tag %#x -> %#x\n", cmp_cntxt,
    tag))
   continue;
  skreq = blk_mq_rq_to_pdu(rq);




  if (skreq->id != req_id) {
   dev_err(&skdev->pdev->dev,
    "Completion mismatch comp_id=0x%04x skreq=0x%04x new=0x%04x\n",
    req_id, skreq->id, cmp_cntxt);

   continue;
  }

  SKD_ASSERT(skreq->state == SKD_REQ_STATE_BUSY);

  skreq->completion = *skcmp;
  if (unlikely(cmp_status == SAM_STAT_CHECK_CONDITION)) {
   skreq->err_info = *skerr;
   skd_log_check_status(skdev, cmp_status, skerr->key,
          skerr->code, skerr->qual,
          skerr->fruc);
  }

  if (skreq->n_sg > 0)
   skd_postop_sg_list(skdev, skreq);

  skd_release_skreq(skdev, skreq);




  if (likely(cmp_status == SAM_STAT_GOOD)) {
   skreq->status = BLK_STS_OK;
   blk_mq_complete_request(rq);
  } else {
   skd_resolve_req_exception(skdev, skreq, rq);
  }


  if (limit) {
   if (++processed >= limit) {
    rc = 1;
    break;
   }
  }
 }

 if (skdev->state == SKD_DRVR_STATE_PAUSING &&
     skd_in_flight(skdev) == 0) {
  skdev->state = SKD_DRVR_STATE_PAUSED;
  wake_up_interruptible(&skdev->waitq);
 }

 return rc;
}
