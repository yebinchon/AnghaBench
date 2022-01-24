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
struct mpic {int /*<<< orphan*/  err_regs; int /*<<< orphan*/  irqhost; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_NO_THREAD ; 
 int /*<<< orphan*/  fsl_error_int_handler ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mpic*) ; 

void FUNC4(struct mpic *mpic, irq_hw_number_t irqnum)
{
	unsigned int virq;
	int ret;

	virq = FUNC0(mpic->irqhost, irqnum);
	if (!virq) {
		FUNC2("Error interrupt setup failed\n");
		return;
	}

	/* Mask all error interrupts */
	FUNC1(mpic->err_regs, ~0);

	ret = FUNC3(virq, fsl_error_int_handler, IRQF_NO_THREAD,
		    "mpic-error-int", mpic);
	if (ret)
		FUNC2("Failed to register error interrupt handler\n");
}