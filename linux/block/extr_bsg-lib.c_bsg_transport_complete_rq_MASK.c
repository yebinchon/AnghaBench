#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sg_io_v4 {int device_status; int response_len; unsigned int din_resid; scalar_t__ dout_resid; scalar_t__ response; int /*<<< orphan*/  max_response_len; int /*<<< orphan*/  info; int /*<<< orphan*/  driver_status; int /*<<< orphan*/  transport_status; } ;
struct request {int dummy; } ;
struct TYPE_2__ {unsigned int payload_len; } ;
struct bsg_job {int result; int reply_len; unsigned int reply_payload_rcv_len; TYPE_1__ reply_payload; scalar_t__ bidi_rq; int /*<<< orphan*/  reply; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  SG_INFO_CHECK ; 
 scalar_t__ FUNC0 (int) ; 
 struct bsg_job* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct request *rq, struct sg_io_v4 *hdr)
{
	struct bsg_job *job = FUNC1(rq);
	int ret = 0;

	/*
	 * The assignments below don't make much sense, but are kept for
	 * bug by bug backwards compatibility:
	 */
	hdr->device_status = job->result & 0xff;
	hdr->transport_status = FUNC4(job->result);
	hdr->driver_status = FUNC3(job->result);
	hdr->info = 0;
	if (hdr->device_status || hdr->transport_status || hdr->driver_status)
		hdr->info |= SG_INFO_CHECK;
	hdr->response_len = 0;

	if (job->result < 0) {
		/* we're only returning the result field in the reply */
		job->reply_len = sizeof(u32);
		ret = job->result;
	}

	if (job->reply_len && hdr->response) {
		int len = FUNC5(hdr->max_response_len, job->reply_len);

		if (FUNC2(FUNC6(hdr->response), job->reply, len))
			ret = -EFAULT;
		else
			hdr->response_len = len;
	}

	/* we assume all request payload was transferred, residual == 0 */
	hdr->dout_resid = 0;

	if (job->bidi_rq) {
		unsigned int rsp_len = job->reply_payload.payload_len;

		if (FUNC0(job->reply_payload_rcv_len > rsp_len))
			hdr->din_resid = 0;
		else
			hdr->din_resid = rsp_len - job->reply_payload_rcv_len;
	} else {
		hdr->din_resid = 0;
	}

	return ret;
}