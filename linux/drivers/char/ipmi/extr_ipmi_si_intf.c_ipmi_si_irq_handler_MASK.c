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
struct TYPE_2__ {scalar_t__ si_type; int /*<<< orphan*/  (* outputb ) (TYPE_1__*,int /*<<< orphan*/ ,int) ;} ;
struct smi_info {int /*<<< orphan*/  si_lock; TYPE_1__ io; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IPMI_BT_INTMASK_CLEAR_IRQ_BIT ; 
 int IPMI_BT_INTMASK_ENABLE_IRQ_BIT ; 
 int /*<<< orphan*/  IPMI_BT_INTMASK_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SI_BT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  interrupts ; 
 int /*<<< orphan*/  FUNC1 (struct smi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

irqreturn_t FUNC6(int irq, void *data)
{
	struct smi_info *smi_info = data;
	unsigned long   flags;

	if (smi_info->io.si_type == SI_BT)
		/* We need to clear the IRQ flag for the BT interface. */
		smi_info->io.outputb(&smi_info->io, IPMI_BT_INTMASK_REG,
				     IPMI_BT_INTMASK_CLEAR_IRQ_BIT
				     | IPMI_BT_INTMASK_ENABLE_IRQ_BIT);

	FUNC3(&(smi_info->si_lock), flags);

	FUNC2(smi_info, interrupts);

	FUNC0("Interrupt");

	FUNC1(smi_info, 0);
	FUNC4(&(smi_info->si_lock), flags);
	return IRQ_HANDLED;
}