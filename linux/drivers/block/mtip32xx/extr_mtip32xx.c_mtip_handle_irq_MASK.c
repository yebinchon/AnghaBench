#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mtip_work {int completed; int /*<<< orphan*/  work; int /*<<< orphan*/  cpu_binding; } ;
struct mtip_port {scalar_t__* completed; scalar_t__ mmio; } ;
struct driver_data {scalar_t__ mmio; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  pdev; struct mtip_work* work; int /*<<< orphan*/  isr_workq; int /*<<< orphan*/  irq_workers_active; struct mtip_port* port; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 scalar_t__ HOST_IRQ_STAT ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 int MTIP_MAX_SLOT_GROUPS ; 
 int PORT_IRQ_ERR ; 
 int PORT_IRQ_LEGACY ; 
 int PORT_IRQ_SDB_FIS ; 
 scalar_t__ PORT_IRQ_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct driver_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtip_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static inline irqreturn_t FUNC13(struct driver_data *data)
{
	struct driver_data *dd = (struct driver_data *) data;
	struct mtip_port *port = dd->port;
	u32 hba_stat, port_stat;
	int rv = IRQ_NONE;
	int do_irq_enable = 1, i, workers;
	struct mtip_work *twork;

	hba_stat = FUNC9(dd->mmio + HOST_IRQ_STAT);
	if (hba_stat) {
		rv = IRQ_HANDLED;

		/* Acknowledge the interrupt status on the port.*/
		port_stat = FUNC9(port->mmio + PORT_IRQ_STAT);
		if (FUNC11(port_stat == 0xFFFFFFFF)) {
			FUNC4(dd->pdev);
			return IRQ_HANDLED;
		}
		FUNC12(port_stat, port->mmio + PORT_IRQ_STAT);

		/* Demux port status */
		if (FUNC3(port_stat & PORT_IRQ_SDB_FIS)) {
			do_irq_enable = 0;
			FUNC0(FUNC1(&dd->irq_workers_active) != 0);

			/* Start at 1: group zero is always local? */
			for (i = 0, workers = 0; i < MTIP_MAX_SLOT_GROUPS;
									i++) {
				twork = &dd->work[i];
				twork->completed = FUNC9(port->completed[i]);
				if (twork->completed)
					workers++;
			}

			FUNC2(&dd->irq_workers_active, workers);
			if (workers) {
				for (i = 1; i < MTIP_MAX_SLOT_GROUPS; i++) {
					twork = &dd->work[i];
					if (twork->completed)
						FUNC8(
							twork->cpu_binding,
							dd->isr_workq,
							&twork->work);
				}

				if (FUNC3(dd->work[0].completed))
					FUNC7(port, 0,
							dd->work[0].completed);

			} else {
				/*
				 * Chip quirk: SDB interrupt but nothing
				 * to complete
				 */
				do_irq_enable = 1;
			}
		}

		if (FUNC11(port_stat & PORT_IRQ_ERR)) {
			if (FUNC11(FUNC4(dd->pdev))) {
				/* don't proceed further */
				return IRQ_HANDLED;
			}
			if (FUNC10(MTIP_DDF_REMOVE_PENDING_BIT,
							&dd->dd_flag))
				return rv;

			FUNC5(dd, port_stat & PORT_IRQ_ERR);
		}

		if (FUNC11(port_stat & PORT_IRQ_LEGACY))
			FUNC6(dd, port_stat & PORT_IRQ_LEGACY);
	}

	/* acknowledge interrupt */
	if (FUNC11(do_irq_enable))
		FUNC12(hba_stat, dd->mmio + HOST_IRQ_STAT);

	return rv;
}