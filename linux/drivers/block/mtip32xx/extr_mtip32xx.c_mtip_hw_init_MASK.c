#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct mtip_port {int dummy; } ;
struct driver_data {scalar_t__ product_type; int slot_groups; TYPE_3__* port; TYPE_2__* pdev; scalar_t__ mmio; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  isr_binding; scalar_t__ unal_qdepth; TYPE_1__* work; int /*<<< orphan*/  numa_node; } ;
struct TYPE_11__ {int /*<<< orphan*/  svc_wait; scalar_t__ mmio; scalar_t__* completed; scalar_t__* cmd_issue; scalar_t__* s_active; struct driver_data* dd; int /*<<< orphan*/ * cmd_issue_lock; int /*<<< orphan*/  cmd_slot_unal; } ;
struct TYPE_10__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {TYPE_3__* port; } ;

/* Variables and functions */
 int EFAULT ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HOST_CAP ; 
 int HOST_CAP_NZDMA ; 
 scalar_t__ HOST_CTL ; 
 int HOST_IRQ_EN ; 
 scalar_t__ HOST_IRQ_STAT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 size_t MTIP_ABAR ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 int MTIP_MAX_SLOT_GROUPS ; 
 scalar_t__ MTIP_MAX_UNALIGNED_SLOTS ; 
 scalar_t__ MTIP_PRODUCT_UNKNOWN ; 
 scalar_t__ PORT_COMMAND_ISSUE ; 
 scalar_t__ PORT_OFFSET ; 
 scalar_t__ PORT_SCR_ACT ; 
 scalar_t__ PORT_SCR_STAT ; 
 scalar_t__ PORT_SDBV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct driver_data*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 TYPE_3__* FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 unsigned long FUNC13 (int) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (struct driver_data*) ; 
 scalar_t__ FUNC17 (struct driver_data*) ; 
 int FUNC18 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC19 (struct driver_data*) ; 
 scalar_t__ FUNC20 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  mtip_irq_handler ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 scalar_t__* FUNC23 (TYPE_2__*) ; 
 int FUNC24 (scalar_t__) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct driver_data*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC31(struct driver_data *dd)
{
	int i;
	int rv;
	unsigned long timeout, timetaken;

	dd->mmio = FUNC23(dd->pdev)[MTIP_ABAR];

	FUNC16(dd);
	if (dd->product_type == MTIP_PRODUCT_UNKNOWN) {
		rv = -EIO;
		goto out1;
	}

	FUNC6(dd);

	dd->port = FUNC11(sizeof(struct mtip_port), GFP_KERNEL,
				dd->numa_node);
	if (!dd->port) {
		FUNC2(&dd->pdev->dev,
			"Memory allocation: port structure\n");
		return -ENOMEM;
	}

	/* Continue workqueue setup */
	for (i = 0; i < MTIP_MAX_SLOT_GROUPS; i++)
		dd->work[i].port = dd->port;

	/* Enable unaligned IO constraints for some devices */
	if (FUNC17(dd))
		dd->unal_qdepth = MTIP_MAX_UNALIGNED_SLOTS;
	else
		dd->unal_qdepth = 0;

	FUNC0(&dd->port->cmd_slot_unal, dd->unal_qdepth);

	/* Spinlock to prevent concurrent issue */
	for (i = 0; i < MTIP_MAX_SLOT_GROUPS; i++)
		FUNC26(&dd->port->cmd_issue_lock[i]);

	/* Set the port mmio base address. */
	dd->port->mmio	= dd->mmio + PORT_OFFSET;
	dd->port->dd	= dd;

	/* DMA allocations */
	rv = FUNC18(dd);
	if (rv < 0)
		goto out1;

	/* Setup the pointers to the extended s_active and CI registers. */
	for (i = 0; i < dd->slot_groups; i++) {
		dd->port->s_active[i] =
			dd->port->mmio + i*0x80 + PORT_SCR_ACT;
		dd->port->cmd_issue[i] =
			dd->port->mmio + i*0x80 + PORT_COMMAND_ISSUE;
		dd->port->completed[i] =
			dd->port->mmio + i*0x80 + PORT_SDBV;
	}

	timetaken = jiffies;
	timeout = jiffies + FUNC13(30000);
	while (((FUNC24(dd->port->mmio + PORT_SCR_STAT) & 0x0F) != 0x03) &&
		 FUNC28(jiffies, timeout)) {
		FUNC12(100);
	}
	if (FUNC29(FUNC14(dd->pdev))) {
		timetaken = jiffies - timetaken;
		FUNC3(&dd->pdev->dev,
			"Surprise removal detected at %u ms\n",
			FUNC9(timetaken));
		rv = -ENODEV;
		goto out2 ;
	}
	if (FUNC29(FUNC27(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))) {
		timetaken = jiffies - timetaken;
		FUNC3(&dd->pdev->dev,
			"Removal detected at %u ms\n",
			FUNC9(timetaken));
		rv = -EFAULT;
		goto out2;
	}

	/* Conditionally reset the HBA. */
	if (!(FUNC24(dd->mmio + HOST_CAP) & HOST_CAP_NZDMA)) {
		if (FUNC20(dd) < 0) {
			FUNC2(&dd->pdev->dev,
				"Card did not reset within timeout\n");
			rv = -EIO;
			goto out2;
		}
	} else {
		/* Clear any pending interrupts on the HBA */
		FUNC30(FUNC24(dd->mmio + HOST_IRQ_STAT),
			dd->mmio + HOST_IRQ_STAT);
	}

	FUNC21(dd->port);
	FUNC22(dd->port);

	/* Setup the ISR and enable interrupts. */
	rv = FUNC25(dd->pdev->irq, mtip_irq_handler, IRQF_SHARED,
			 FUNC1(&dd->pdev->dev), dd);
	if (rv) {
		FUNC2(&dd->pdev->dev,
			"Unable to allocate IRQ %d\n", dd->pdev->irq);
		goto out2;
	}
	FUNC8(dd->pdev->irq, FUNC5(dd->isr_binding));

	/* Enable interrupts on the HBA. */
	FUNC30(FUNC24(dd->mmio + HOST_CTL) | HOST_IRQ_EN,
					dd->mmio + HOST_CTL);

	FUNC7(&dd->port->svc_wait);

	if (FUNC27(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag)) {
		rv = -EFAULT;
		goto out3;
	}

	return rv;

out3:
	/* Disable interrupts on the HBA. */
	FUNC30(FUNC24(dd->mmio + HOST_CTL) & ~HOST_IRQ_EN,
			dd->mmio + HOST_CTL);

	/* Release the IRQ. */
	FUNC8(dd->pdev->irq, NULL);
	FUNC4(dd->pdev->irq, dd);

out2:
	FUNC15(dd->port);
	FUNC19(dd);

out1:
	/* Free the memory allocated for the for structure. */
	FUNC10(dd->port);

	return rv;
}