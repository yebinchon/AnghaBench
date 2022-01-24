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
typedef  int u32 ;
struct driver_data {TYPE_1__* port; TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  svc_wait; int /*<<< orphan*/  flags; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_PF_EH_ACTIVE_BIT ; 
 int PORT_IRQ_CONNECT ; 
 int PORT_IRQ_HANDLED ; 
 int PORT_IRQ_IF_ERR ; 
 int PORT_IRQ_PHYRDY ; 
 int PORT_IRQ_TF_ERR ; 
 scalar_t__ PORT_SCR_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC7(struct driver_data *dd, u32 port_stat)
{
	if (FUNC4(port_stat & PORT_IRQ_CONNECT)) {
		FUNC0(&dd->pdev->dev,
			"Clearing PxSERR.DIAG.x\n");
		FUNC6((1 << 26), dd->port->mmio + PORT_SCR_ERR);
	}

	if (FUNC4(port_stat & PORT_IRQ_PHYRDY)) {
		FUNC0(&dd->pdev->dev,
			"Clearing PxSERR.DIAG.n\n");
		FUNC6((1 << 16), dd->port->mmio + PORT_SCR_ERR);
	}

	if (FUNC4(port_stat & ~PORT_IRQ_HANDLED)) {
		FUNC0(&dd->pdev->dev,
			"Port stat errors %x unhandled\n",
			(port_stat & ~PORT_IRQ_HANDLED));
		if (FUNC2(dd->pdev))
			return;
	}
	if (FUNC1(port_stat & (PORT_IRQ_TF_ERR | PORT_IRQ_IF_ERR))) {
		FUNC3(MTIP_PF_EH_ACTIVE_BIT, &dd->port->flags);
		FUNC5(&dd->port->svc_wait);
	}
}