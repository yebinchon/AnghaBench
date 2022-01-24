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
struct mtip_port {int flags; int* cmds_to_issue; int /*<<< orphan*/  svc_wait; } ;
struct driver_data {int slot_groups; int dd_flag; int /*<<< orphan*/  queue; struct mtip_port* port; int /*<<< orphan*/  tags; TYPE_1__* pdev; int /*<<< orphan*/  irq_workers_active; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long MTIP_DDF_REMOVE_PENDING_BIT ; 
 unsigned long MTIP_PF_EH_ACTIVE_BIT ; 
 unsigned long MTIP_PF_ISSUE_CMDS_BIT ; 
 unsigned long MTIP_PF_REBUILD_BIT ; 
 unsigned long MTIP_PF_SVC_THD_ACTIVE_BIT ; 
 unsigned long MTIP_PF_SVC_THD_STOP_BIT ; 
 int MTIP_PF_SVC_THD_WORK ; 
 unsigned long MTIP_PF_TO_ACTIVE_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC6 (int*,unsigned int,unsigned long) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 unsigned long FUNC9 (int) ; 
 int /*<<< orphan*/  mtip_abort_cmd ; 
 scalar_t__ FUNC10 (struct driver_data*) ; 
 scalar_t__ FUNC11 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct mtip_port*,unsigned long) ; 
 int /*<<< orphan*/  mtip_queue_cmd ; 
 int /*<<< orphan*/  FUNC14 (unsigned long,int*) ; 
 int FUNC15 (unsigned long,int*) ; 
 scalar_t__ FUNC16 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(void *data)
{
	struct driver_data *dd = (struct driver_data *)data;
	unsigned long slot, slot_start, slot_wrap, to;
	unsigned int num_cmd_slots = dd->slot_groups * 32;
	struct mtip_port *port = dd->port;

	while (1) {
		if (FUNC7() ||
			FUNC15(MTIP_PF_SVC_THD_STOP_BIT, &port->flags))
			goto st_out;
		FUNC4(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags);

		/*
		 * the condition is to check neither an internal command is
		 * is in progress nor error handling is active
		 */
		FUNC18(port->svc_wait, (port->flags) &&
			(port->flags & MTIP_PF_SVC_THD_WORK));

		if (FUNC7() ||
			FUNC15(MTIP_PF_SVC_THD_STOP_BIT, &port->flags))
			goto st_out;

		if (FUNC17(FUNC15(MTIP_DDF_REMOVE_PENDING_BIT,
				&dd->dd_flag)))
			goto st_out;

		FUNC14(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags);

restart_eh:
		/* Demux bits: start with error handling */
		if (FUNC15(MTIP_PF_EH_ACTIVE_BIT, &port->flags)) {
			FUNC12(dd);
			FUNC4(MTIP_PF_EH_ACTIVE_BIT, &port->flags);
		}

		if (FUNC15(MTIP_PF_EH_ACTIVE_BIT, &port->flags))
			goto restart_eh;

		if (FUNC15(MTIP_PF_TO_ACTIVE_BIT, &port->flags)) {
			to = jiffies + FUNC9(5000);

			do {
				FUNC8(100);
			} while (FUNC0(&dd->irq_workers_active) != 0 &&
				FUNC16(jiffies, to));

			if (FUNC0(&dd->irq_workers_active) != 0)
				FUNC5(&dd->pdev->dev,
					"Completion workers still active!");

			FUNC1(dd->queue);

			FUNC2(&dd->tags, mtip_queue_cmd, dd);

			FUNC14(MTIP_PF_ISSUE_CMDS_BIT, &dd->port->flags);

			if (FUNC10(dd))
				FUNC2(&dd->tags,
							mtip_abort_cmd, dd);

			FUNC4(MTIP_PF_TO_ACTIVE_BIT, &dd->port->flags);

			FUNC3(dd->queue);
		}

		if (FUNC15(MTIP_PF_ISSUE_CMDS_BIT, &port->flags)) {
			slot = 1;
			/* used to restrict the loop to one iteration */
			slot_start = num_cmd_slots;
			slot_wrap = 0;
			while (1) {
				slot = FUNC6(port->cmds_to_issue,
						num_cmd_slots, slot);
				if (slot_wrap == 1) {
					if ((slot_start >= slot) ||
						(slot >= num_cmd_slots))
						break;
				}
				if (FUNC17(slot_start == num_cmd_slots))
					slot_start = slot;

				if (FUNC17(slot == num_cmd_slots)) {
					slot = 1;
					slot_wrap = 1;
					continue;
				}

				/* Issue the command to the hardware */
				FUNC13(port, slot);

				FUNC4(slot, port->cmds_to_issue);
			}

			FUNC4(MTIP_PF_ISSUE_CMDS_BIT, &port->flags);
		}

		if (FUNC15(MTIP_PF_REBUILD_BIT, &port->flags)) {
			if (FUNC11(dd) == 0)
				FUNC4(MTIP_PF_REBUILD_BIT, &port->flags);
		}
	}

st_out:
	return 0;
}