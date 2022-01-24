#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sg_io_v4 {scalar_t__ din_xfer_len; int /*<<< orphan*/  din_xferp; scalar_t__ dout_xfer_len; int /*<<< orphan*/  request_len; int /*<<< orphan*/  request; } ;
struct request {int /*<<< orphan*/  q; } ;
struct bsg_job {TYPE_1__* request; TYPE_1__* bidi_rq; int /*<<< orphan*/ * bidi_bio; int /*<<< orphan*/  request_len; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_8__ {int /*<<< orphan*/ * bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  REQ_OP_SCSI_IN ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bsg_job* FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct request *rq, struct sg_io_v4 *hdr,
		fmode_t mode)
{
	struct bsg_job *job = FUNC3(rq);
	int ret;

	job->request_len = hdr->request_len;
	job->request = FUNC7(FUNC8(hdr->request), hdr->request_len);
	if (FUNC0(job->request))
		return FUNC1(job->request);

	if (hdr->dout_xfer_len && hdr->din_xfer_len) {
		job->bidi_rq = FUNC2(rq->q, REQ_OP_SCSI_IN, 0);
		if (FUNC0(job->bidi_rq)) {
			ret = FUNC1(job->bidi_rq);
			goto out;
		}

		ret = FUNC5(rq->q, job->bidi_rq, NULL,
				FUNC8(hdr->din_xferp), hdr->din_xfer_len,
				GFP_KERNEL);
		if (ret)
			goto out_free_bidi_rq;

		job->bidi_bio = job->bidi_rq->bio;
	} else {
		job->bidi_rq = NULL;
		job->bidi_bio = NULL;
	}

	return 0;

out_free_bidi_rq:
	if (job->bidi_rq)
		FUNC4(job->bidi_rq);
out:
	FUNC6(job->request);
	return ret;
}