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
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  timeout; } ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {int* cmd; int cmd_len; scalar_t__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_DEFAULT_SG_TIMEOUT ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_SCSI_OUT ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct gendisk*,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC3 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 TYPE_1__* FUNC5 (struct request*) ; 

__attribute__((used)) static int FUNC6(struct request_queue *q, struct gendisk *bd_disk,
			      int cmd, int data)
{
	struct request *rq;
	int err;

	rq = FUNC3(q, REQ_OP_SCSI_OUT, 0);
	if (FUNC0(rq))
		return FUNC1(rq);
	rq->timeout = BLK_DEFAULT_SG_TIMEOUT;
	FUNC5(rq)->cmd[0] = cmd;
	FUNC5(rq)->cmd[4] = data;
	FUNC5(rq)->cmd_len = 6;
	FUNC2(q, bd_disk, rq, 0);
	err = FUNC5(rq)->result ? -EIO : 0;
	FUNC4(rq);

	return err;
}