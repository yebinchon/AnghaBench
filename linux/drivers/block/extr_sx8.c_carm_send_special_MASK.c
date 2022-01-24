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
typedef  scalar_t__ u32 ;
struct request {int /*<<< orphan*/  tag; } ;
struct carm_request {scalar_t__ msg_bucket; int /*<<< orphan*/  msg_subtype; int /*<<< orphan*/  msg_type; } ;
struct carm_msg_ioctl {int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct carm_host {int /*<<< orphan*/  oob_q; } ;
typedef  unsigned int (* carm_sspc_t ) (struct carm_host*,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_DRV_OUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int,int /*<<< orphan*/ *) ; 
 struct request* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct carm_request* FUNC5 (struct request*) ; 
 int FUNC6 (unsigned int) ; 
 void* FUNC7 (struct carm_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (struct carm_host *host, carm_sspc_t func)
{
	struct request *rq;
	struct carm_request *crq;
	struct carm_msg_ioctl *ioc;
	void *mem;
	unsigned int msg_size;
	int rc;

	rq = FUNC4(host->oob_q, REQ_OP_DRV_OUT, 0);
	if (FUNC2(rq))
		return -ENOMEM;
	crq = FUNC5(rq);

	mem = FUNC7(host, rq->tag);

	msg_size = func(host, rq->tag, mem);

	ioc = mem;
	crq->msg_type = ioc->type;
	crq->msg_subtype = ioc->subtype;
	rc = FUNC6(msg_size);
	FUNC0(rc < 0);
	crq->msg_bucket = (u32) rc;

	FUNC1("blk_execute_rq_nowait, tag == %u\n", rq->tag);
	FUNC3(host->oob_q, NULL, rq, true, NULL);

	return 0;
}