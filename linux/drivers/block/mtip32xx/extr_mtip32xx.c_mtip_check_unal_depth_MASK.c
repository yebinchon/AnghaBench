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
struct request {int dummy; } ;
struct mtip_cmd {int unaligned; } ;
struct driver_data {TYPE_1__* port; int /*<<< orphan*/  unal_qdepth; } ;
struct blk_mq_hw_ctx {TYPE_2__* queue; } ;
struct TYPE_4__ {struct driver_data* queuedata; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd_slot_unal; } ;

/* Variables and functions */
 scalar_t__ READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct mtip_cmd* FUNC1 (struct request*) ; 
 int FUNC2 (struct request*) ; 
 int FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 

__attribute__((used)) static bool FUNC5(struct blk_mq_hw_ctx *hctx,
				  struct request *rq)
{
	struct driver_data *dd = hctx->queue->queuedata;
	struct mtip_cmd *cmd = FUNC1(rq);

	if (FUNC4(rq) == READ || !dd->unal_qdepth)
		return false;

	/*
	 * If unaligned depth must be limited on this controller, mark it
	 * as unaligned if the IO isn't on a 4k boundary (start of length).
	 */
	if (FUNC3(rq) <= 64) {
		if ((FUNC2(rq) & 7) || (FUNC3(rq) & 7))
			cmd->unaligned = 1;
	}

	if (cmd->unaligned && FUNC0(&dd->port->cmd_slot_unal) >= 0)
		return true;

	return false;
}