#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct request {int /*<<< orphan*/  tag; } ;
struct carm_request {scalar_t__ msg_bucket; void* msg_subtype; void* msg_type; } ;
struct carm_msg_ioctl {void* data_addr; void* handle; scalar_t__ array_id; void* subtype; void* type; } ;
struct carm_host {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  oob_q; } ;
struct carm_array_info {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CARM_ARRAY_INFO ; 
 void* CARM_MSG_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ HST_DEV_SCAN ; 
 scalar_t__ HST_DEV_SCAN_START ; 
 scalar_t__ HST_ERROR ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_DRV_OUT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ *) ; 
 struct request* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct carm_request* FUNC7 (struct request*) ; 
 int FUNC8 (int) ; 
 struct carm_msg_ioctl* FUNC9 (struct carm_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct carm_host*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct carm_msg_ioctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15 (struct carm_host *host, unsigned int array_idx)
{
	struct carm_msg_ioctl *ioc;
	u32 msg_data;
	dma_addr_t msg_dma;
	struct carm_request *crq;
	struct request *rq;
	int rc;

	rq = FUNC6(host->oob_q, REQ_OP_DRV_OUT, 0);
	if (FUNC2(rq)) {
		rc = -ENOMEM;
		goto err_out;
	}
	crq = FUNC7(rq);

	ioc = FUNC9(host, rq->tag);
	msg_dma = FUNC10(host, rq->tag);
	msg_data = (u32) (msg_dma + sizeof(struct carm_array_info));

	crq->msg_type = CARM_MSG_ARRAY;
	crq->msg_subtype = CARM_ARRAY_INFO;
	rc = FUNC8(sizeof(struct carm_msg_ioctl) +
				sizeof(struct carm_array_info));
	FUNC0(rc < 0);
	crq->msg_bucket = (u32) rc;

	FUNC12(ioc, 0, sizeof(*ioc));
	ioc->type	= CARM_MSG_ARRAY;
	ioc->subtype	= CARM_ARRAY_INFO;
	ioc->array_id	= (u8) array_idx;
	ioc->handle	= FUNC11(FUNC3(rq->tag));
	ioc->data_addr	= FUNC11(msg_data);

	FUNC13(&host->lock);
	FUNC4(host->state == HST_DEV_SCAN_START ||
	       host->state == HST_DEV_SCAN);
	FUNC14(&host->lock);

	FUNC1("blk_execute_rq_nowait, tag == %u\n", rq->tag);
	FUNC5(host->oob_q, NULL, rq, true, NULL);

	return 0;

err_out:
	FUNC13(&host->lock);
	host->state = HST_ERROR;
	FUNC14(&host->lock);
	return rc;
}