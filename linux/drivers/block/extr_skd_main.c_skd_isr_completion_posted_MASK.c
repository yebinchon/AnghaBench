#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
typedef  size_t u16 ;
struct fit_comp_error_info {int /*<<< orphan*/  fruc; int /*<<< orphan*/  qual; int /*<<< orphan*/  code; int /*<<< orphan*/  key; } ;
struct fit_completion_entry_v1 {scalar_t__ cycle; size_t tag; scalar_t__ status; int /*<<< orphan*/  num_returned_bytes; } ;
struct skd_request_context {size_t id; scalar_t__ state; scalar_t__ n_sg; int /*<<< orphan*/  status; struct fit_comp_error_info err_info; struct fit_completion_entry_v1 completion; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tags; } ;
struct skd_device {size_t skcomp_ix; scalar_t__ skcomp_cycle; size_t num_req_context; scalar_t__ state; int /*<<< orphan*/  waitq; TYPE_2__* pdev; TYPE_1__ tag_set; int /*<<< orphan*/  proto_ver; struct fit_comp_error_info* skerr_table; struct fit_completion_entry_v1* skcomp_table; int /*<<< orphan*/  lock; } ;
struct request {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 scalar_t__ SAM_STAT_CHECK_CONDITION ; 
 scalar_t__ SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SKD_DRVR_STATE_PAUSED ; 
 scalar_t__ SKD_DRVR_STATE_PAUSING ; 
 size_t SKD_ID_SLOT_AND_TABLE_MASK ; 
 size_t SKD_N_COMPLETION_ENTRY ; 
 scalar_t__ SKD_REQ_STATE_BUSY ; 
 scalar_t__ FUNC1 (int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 struct skd_request_context* FUNC5 (struct request*) ; 
 struct request* FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,size_t,size_t,size_t) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct skd_device*,struct fit_completion_entry_v1*,struct fit_comp_error_info*) ; 
 scalar_t__ FUNC12 (struct skd_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct skd_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct skd_device*,struct skd_request_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct skd_device*,struct skd_request_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct skd_device*,struct skd_request_context*,struct request*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct skd_device *skdev,
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

	FUNC10(&skdev->lock);

	for (;; ) {
		FUNC0(skdev->skcomp_ix < SKD_N_COMPLETION_ENTRY);

		skcmp = &skdev->skcomp_table[skdev->skcomp_ix];
		cmp_cycle = skcmp->cycle;
		cmp_cntxt = skcmp->tag;
		cmp_status = skcmp->status;
		cmp_bytes = FUNC3(skcmp->num_returned_bytes);

		skerr = &skdev->skerr_table[skdev->skcomp_ix];

		FUNC7(&skdev->pdev->dev,
			"cycle=%d ix=%d got cycle=%d cmdctxt=0x%x stat=%d busy=%d rbytes=0x%x proto=%d\n",
			skdev->skcomp_cycle, skdev->skcomp_ix, cmp_cycle,
			cmp_cntxt, cmp_status, FUNC12(skdev),
			cmp_bytes, skdev->proto_ver);

		if (cmp_cycle != skdev->skcomp_cycle) {
			FUNC7(&skdev->pdev->dev, "end of completions\n");
			break;
		}
		/*
		 * Update the completion queue head index and possibly
		 * the completion cycle count. 8-bit wrap-around.
		 */
		skdev->skcomp_ix++;
		if (skdev->skcomp_ix >= SKD_N_COMPLETION_ENTRY) {
			skdev->skcomp_ix = 0;
			skdev->skcomp_cycle++;
		}

		/*
		 * The command context is a unique 32-bit ID. The low order
		 * bits help locate the request. The request is usually a
		 * r/w request (see skd_start() above) or a special request.
		 */
		req_id = cmp_cntxt;
		tag = req_id & SKD_ID_SLOT_AND_TABLE_MASK;

		/* Is this other than a r/w request? */
		if (tag >= skdev->num_req_context) {
			/*
			 * This is not a completion for a r/w request.
			 */
			FUNC2(FUNC6(skdev->tag_set.tags[hwq],
						      tag));
			FUNC11(skdev, skcmp, skerr);
			continue;
		}

		rq = FUNC6(skdev->tag_set.tags[hwq], tag);
		if (FUNC1(!rq, "No request for tag %#x -> %#x\n", cmp_cntxt,
			 tag))
			continue;
		skreq = FUNC5(rq);

		/*
		 * Make sure the request ID for the slot matches.
		 */
		if (skreq->id != req_id) {
			FUNC8(&skdev->pdev->dev,
				"Completion mismatch comp_id=0x%04x skreq=0x%04x new=0x%04x\n",
				req_id, skreq->id, cmp_cntxt);

			continue;
		}

		FUNC0(skreq->state == SKD_REQ_STATE_BUSY);

		skreq->completion = *skcmp;
		if (FUNC17(cmp_status == SAM_STAT_CHECK_CONDITION)) {
			skreq->err_info = *skerr;
			FUNC13(skdev, cmp_status, skerr->key,
					     skerr->code, skerr->qual,
					     skerr->fruc);
		}
		/* Release DMA resources for the request. */
		if (skreq->n_sg > 0)
			FUNC14(skdev, skreq);

		FUNC15(skdev, skreq);

		/*
		 * Capture the outcome and post it back to the native request.
		 */
		if (FUNC9(cmp_status == SAM_STAT_GOOD)) {
			skreq->status = BLK_STS_OK;
			FUNC4(rq);
		} else {
			FUNC16(skdev, skreq, rq);
		}

		/* skd_isr_comp_limit equal zero means no limit */
		if (limit) {
			if (++processed >= limit) {
				rc = 1;
				break;
			}
		}
	}

	if (skdev->state == SKD_DRVR_STATE_PAUSING &&
	    FUNC12(skdev) == 0) {
		skdev->state = SKD_DRVR_STATE_PAUSED;
		FUNC18(&skdev->waitq);
	}

	return rc;
}