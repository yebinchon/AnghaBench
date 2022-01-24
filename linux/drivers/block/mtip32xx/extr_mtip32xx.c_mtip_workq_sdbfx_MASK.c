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
struct mtip_port {scalar_t__* completed; struct driver_data* dd; } ;
struct mtip_cmd {int dummy; } ;
struct driver_data {scalar_t__ mmio; int /*<<< orphan*/  irq_workers_active; } ;

/* Variables and functions */
 scalar_t__ HOST_IRQ_STAT ; 
 int MTIP_TAG_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct mtip_cmd* FUNC2 (struct driver_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtip_cmd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC6(struct mtip_port *port, int group,
							u32 completed)
{
	struct driver_data *dd = port->dd;
	int tag, bit;
	struct mtip_cmd *command;

	if (!completed) {
		FUNC0(!completed);
		return;
	}
	/* clear completed status register in the hardware.*/
	FUNC5(completed, port->completed[group]);

	/* Process completed commands. */
	for (bit = 0; (bit < 32) && completed; bit++) {
		if (completed & 0x01) {
			tag = (group << 5) | bit;

			/* skip internal command slot. */
			if (FUNC4(tag == MTIP_TAG_INTERNAL))
				continue;

			command = FUNC2(dd, tag);
			FUNC3(command, 0);
		}
		completed >>= 1;
	}

	/* If last, re-enable interrupts */
	if (FUNC1(&dd->irq_workers_active) == 0)
		FUNC5(0xffffffff, dd->mmio + HOST_IRQ_STAT);
}