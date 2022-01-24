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
struct mtip_port {TYPE_1__* dd; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int /*<<< orphan*/  MTIP_PF_ISSUE_CMDS_BIT ; 
 int /*<<< orphan*/  MTIP_PF_SVC_THD_ACTIVE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mtip_port*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct mtip_port *port, unsigned long timeout)
{
	unsigned long to;
	bool active = true;

	FUNC0(port->dd->queue);

	to = jiffies + FUNC2(timeout);
	do {
		if (FUNC6(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags) &&
			FUNC6(MTIP_PF_ISSUE_CMDS_BIT, &port->flags)) {
			FUNC3(20);
			continue; /* svc thd is actively issuing commands */
		}

		FUNC3(100);

		if (FUNC4(port->dd->pdev))
			goto err_fault;

		active = FUNC5(port);
		if (!active)
			break;
	} while (FUNC7(jiffies, to));

	FUNC1(port->dd->queue);
	return active ? -EBUSY : 0;
err_fault:
	FUNC1(port->dd->queue);
	return -EFAULT;
}