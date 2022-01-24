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
struct request_queue {int dummy; } ;
struct request {int timeout; int /*<<< orphan*/  q; int /*<<< orphan*/  rq_flags; } ;
struct pktcdvd_device {TYPE_2__* bdev; } ;
struct packet_command {scalar_t__ data_direction; scalar_t__ quiet; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  buflen; int /*<<< orphan*/  buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_disk; } ;
struct TYPE_3__ {scalar_t__ result; int /*<<< orphan*/  cmd; int /*<<< orphan*/  cmd_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDROM_PACKET_SIZE ; 
 scalar_t__ CGC_DATA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct request*) ; 
 int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_SCSI_IN ; 
 int /*<<< orphan*/  REQ_OP_SCSI_OUT ; 
 int /*<<< orphan*/  RQF_QUIET ; 
 struct request_queue* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC5 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int FUNC7 (struct request_queue*,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct request*) ; 

__attribute__((used)) static int FUNC10(struct pktcdvd_device *pd, struct packet_command *cgc)
{
	struct request_queue *q = FUNC3(pd->bdev);
	struct request *rq;
	int ret = 0;

	rq = FUNC5(q, (cgc->data_direction == CGC_DATA_WRITE) ?
			     REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, 0);
	if (FUNC1(rq))
		return FUNC2(rq);

	if (cgc->buflen) {
		ret = FUNC7(q, rq, cgc->buffer, cgc->buflen,
				      GFP_NOIO);
		if (ret)
			goto out;
	}

	FUNC9(rq)->cmd_len = FUNC0(cgc->cmd[0]);
	FUNC8(FUNC9(rq)->cmd, cgc->cmd, CDROM_PACKET_SIZE);

	rq->timeout = 60*HZ;
	if (cgc->quiet)
		rq->rq_flags |= RQF_QUIET;

	FUNC4(rq->q, pd->bdev->bd_disk, rq, 0);
	if (FUNC9(rq)->result)
		ret = -EIO;
out:
	FUNC6(rq);
	return ret;
}