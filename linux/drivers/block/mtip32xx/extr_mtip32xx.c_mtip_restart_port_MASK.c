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
struct mtip_port {TYPE_2__* dd; scalar_t__ mmio; } ;
struct TYPE_4__ {TYPE_1__* pdev; int /*<<< orphan*/  dd_flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 scalar_t__ PORT_CMD ; 
 int PORT_CMD_LIST_ON ; 
 scalar_t__ PORT_SCR_CTL ; 
 scalar_t__ PORT_SCR_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtip_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtip_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtip_port*) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct mtip_port *port)
{
	unsigned long timeout;

	/* Disable the DMA engine */
	FUNC4(port, 0);

	/* Chip quirk: wait up to 500ms for PxCMD.CR == 0 */
	timeout = jiffies + FUNC3(500);
	while ((FUNC8(port->mmio + PORT_CMD) & PORT_CMD_LIST_ON)
		 && FUNC10(jiffies, timeout))
		;

	if (FUNC9(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
		return;

	/*
	 * Chip quirk: escalate to hba reset if
	 * PxCMD.CR not clear after 500 ms
	 */
	if (FUNC8(port->mmio + PORT_CMD) & PORT_CMD_LIST_ON) {
		FUNC1(&port->dd->pdev->dev,
			"PxCMD.CR not clear, escalating reset\n");

		if (FUNC5(port->dd))
			FUNC0(&port->dd->pdev->dev,
				"HBA reset escalation failed.\n");

		/* 30 ms delay before com reset to quiesce chip */
		FUNC2(30);
	}

	FUNC1(&port->dd->pdev->dev, "Issuing COM reset\n");

	/* Set PxSCTL.DET */
	FUNC11(FUNC8(port->mmio + PORT_SCR_CTL) |
			 1, port->mmio + PORT_SCR_CTL);
	FUNC8(port->mmio + PORT_SCR_CTL);

	/* Wait 1 ms to quiesce chip function */
	timeout = jiffies + FUNC3(1);
	while (FUNC10(jiffies, timeout))
		;

	if (FUNC9(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
		return;

	/* Clear PxSCTL.DET */
	FUNC11(FUNC8(port->mmio + PORT_SCR_CTL) & ~1,
			 port->mmio + PORT_SCR_CTL);
	FUNC8(port->mmio + PORT_SCR_CTL);

	/* Wait 500 ms for bit 0 of PORT_SCR_STS to be set */
	timeout = jiffies + FUNC3(500);
	while (((FUNC8(port->mmio + PORT_SCR_STAT) & 0x01) == 0)
			 && FUNC10(jiffies, timeout))
		;

	if (FUNC9(MTIP_DDF_REMOVE_PENDING_BIT, &port->dd->dd_flag))
		return;

	if ((FUNC8(port->mmio + PORT_SCR_STAT) & 0x01) == 0)
		FUNC1(&port->dd->pdev->dev,
			"COM reset failed\n");

	FUNC6(port);
	FUNC7(port);

}