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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct scatterlist {int dummy; } ;
struct request_queue {struct carm_port* queuedata; } ;
struct request {int /*<<< orphan*/  tag; } ;
struct carm_request {int n_elem; int msg_bucket; struct scatterlist* sg; void* msg_type; } ;
struct carm_port {int /*<<< orphan*/  port_no; struct carm_host* host; } ;
struct carm_msg_sg {void* len; void* start; } ;
struct carm_msg_rw {int sg_count; struct carm_msg_sg* sg; void* lba_count; void* lba_high; void* lba; void* handle; int /*<<< orphan*/  sg_type; int /*<<< orphan*/  id; void* type; } ;
struct carm_host {int hw_sg_used; int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
struct blk_mq_queue_data {struct request* rq; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DEV_RESOURCE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CARM_MAX_HOST_SG ; 
 int /*<<< orphan*/  CARM_MAX_REQ_SG ; 
 void* CARM_MSG_READ ; 
 void* CARM_MSG_WRITE ; 
 scalar_t__ REQ_OP_DRV_OUT ; 
 int /*<<< orphan*/  SGT_32BIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ WRITE ; 
 struct carm_request* FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int FUNC5 (struct request_queue*,struct request*,struct scatterlist*) ; 
 int FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct carm_host*,struct request_queue*) ; 
 scalar_t__ FUNC10 (struct carm_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct carm_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct request*) ; 
 int FUNC13 (struct carm_host*,struct carm_request*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct request*) ; 
 scalar_t__ FUNC19 (struct request*) ; 
 int FUNC20 (struct scatterlist*) ; 
 int FUNC21 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC22 (struct scatterlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC25(struct blk_mq_hw_ctx *hctx,
				  const struct blk_mq_queue_data *bd)
{
	struct request_queue *q = hctx->queue;
	struct request *rq = bd->rq;
	struct carm_port *port = q->queuedata;
	struct carm_host *host = port->host;
	struct carm_request *crq = FUNC3(rq);
	struct carm_msg_rw *msg;
	struct scatterlist *sg;
	int i, n_elem = 0, rc;
	unsigned int msg_size;
	u32 tmp;

	crq->n_elem = 0;
	FUNC22(crq->sg, CARM_MAX_REQ_SG);

	FUNC4(rq);

	FUNC23(&host->lock);
	if (FUNC18(rq) == REQ_OP_DRV_OUT)
		goto send_msg;

	/* get scatterlist from block layer */
	sg = &crq->sg[0];
	n_elem = FUNC5(q, rq, sg);
	if (n_elem <= 0)
		goto out_ioerr;

	/* map scatterlist to PCI bus addresses */
	n_elem = FUNC16(&host->pdev->dev, sg, n_elem, FUNC12(rq));
	if (n_elem <= 0)
		goto out_ioerr;

	/* obey global hardware limit on S/G entries */
	if (host->hw_sg_used >= CARM_MAX_HOST_SG - n_elem)
		goto out_resource;

	crq->n_elem = n_elem;
	host->hw_sg_used += n_elem;

	/*
	 * build read/write message
	 */

	FUNC2("build msg\n");
	msg = (struct carm_msg_rw *) FUNC10(host, rq->tag);

	if (FUNC19(rq) == WRITE) {
		msg->type = CARM_MSG_WRITE;
		crq->msg_type = CARM_MSG_WRITE;
	} else {
		msg->type = CARM_MSG_READ;
		crq->msg_type = CARM_MSG_READ;
	}

	msg->id		= port->port_no;
	msg->sg_count	= n_elem;
	msg->sg_type	= SGT_32BIT;
	msg->handle	= FUNC15(FUNC1(rq->tag));
	msg->lba	= FUNC15(FUNC6(rq) & 0xffffffff);
	tmp		= (FUNC6(rq) >> 16) >> 16;
	msg->lba_high	= FUNC14( (u16) tmp );
	msg->lba_count	= FUNC14(FUNC7(rq));

	msg_size = sizeof(struct carm_msg_rw) - sizeof(msg->sg);
	for (i = 0; i < n_elem; i++) {
		struct carm_msg_sg *carm_sg = &msg->sg[i];
		carm_sg->start = FUNC15(FUNC20(&crq->sg[i]));
		carm_sg->len = FUNC15(FUNC21(&crq->sg[i]));
		msg_size += sizeof(struct carm_msg_sg);
	}

	rc = FUNC8(msg_size);
	FUNC0(rc < 0);
	crq->msg_bucket = (u32) rc;
send_msg:
	/*
	 * queue read/write message to hardware
	 */
	FUNC2("send msg, tag == %u\n", rq->tag);
	rc = FUNC13(host, crq, rq->tag);
	if (rc) {
		host->hw_sg_used -= n_elem;
		goto out_resource;
	}

	FUNC24(&host->lock);
	return BLK_STS_OK;
out_resource:
	FUNC17(&host->pdev->dev, &crq->sg[0], n_elem, FUNC12(rq));
	FUNC9(host, q);
	FUNC24(&host->lock);
	return BLK_STS_DEV_RESOURCE;
out_ioerr:
	FUNC11(host);
	FUNC24(&host->lock);
	return BLK_STS_IOERR;
}