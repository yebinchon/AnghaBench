#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request {TYPE_2__* q; } ;
struct mtip_cmd {int /*<<< orphan*/  status; int /*<<< orphan*/  unaligned; int /*<<< orphan*/  direction; int /*<<< orphan*/  scatter_ents; int /*<<< orphan*/  sg; } ;
struct driver_data {TYPE_1__* port; TYPE_3__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct driver_data* queuedata; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_slot_unal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 struct mtip_cmd* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct request *rq)
{
	struct mtip_cmd *cmd = FUNC2(rq);
	struct driver_data *dd = rq->q->queuedata;

	/* Unmap the DMA scatter list entries */
	FUNC3(&dd->pdev->dev, cmd->sg, cmd->scatter_ents,
							cmd->direction);

	if (FUNC4(cmd->unaligned))
		FUNC0(&dd->port->cmd_slot_unal);

	FUNC1(rq, cmd->status);
}