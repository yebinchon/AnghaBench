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
struct request {int /*<<< orphan*/  tag; TYPE_1__* q; } ;
struct mtip_cmd {int /*<<< orphan*/  status; } ;
struct driver_data {TYPE_2__* port; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_4__ {int /*<<< orphan*/  svc_wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmds_to_issue; } ;
struct TYPE_3__ {struct driver_data* queuedata; } ;

/* Variables and functions */
 int BLK_EH_DONE ; 
 int BLK_EH_RESET_TIMER ; 
 int /*<<< orphan*/  BLK_STS_TIMEOUT ; 
 int /*<<< orphan*/  MTIP_PF_TO_ACTIVE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 struct mtip_cmd* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum blk_eh_timer_return FUNC5(struct request *req,
								bool reserved)
{
	struct driver_data *dd = req->q->queuedata;

	if (reserved) {
		struct mtip_cmd *cmd = FUNC1(req);

		cmd->status = BLK_STS_TIMEOUT;
		FUNC0(req);
		return BLK_EH_DONE;
	}

	if (FUNC3(req->tag, dd->port->cmds_to_issue))
		goto exit_handler;

	if (FUNC2(MTIP_PF_TO_ACTIVE_BIT, &dd->port->flags))
		goto exit_handler;

	FUNC4(&dd->port->svc_wait);
exit_handler:
	return BLK_EH_RESET_TIMER;
}