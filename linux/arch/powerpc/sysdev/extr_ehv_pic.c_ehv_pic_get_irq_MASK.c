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
struct TYPE_2__ {int /*<<< orphan*/  irqhost; scalar_t__ coreint_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPRN_EPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* global_ehv_pic ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

unsigned int FUNC4(void)
{
	int irq;

	FUNC0(global_ehv_pic == NULL);

	if (global_ehv_pic->coreint_flag)
		irq = FUNC3(SPRN_EPR); /* if core int mode */
	else
		FUNC1(0, &irq); /* legacy mode */

	if (irq == 0xFFFF)    /* 0xFFFF --> no irq is pending */
		return 0;

	/*
	 * this will also setup revmap[] in the slow path for the first
	 * time, next calls will always use fast path by indexing revmap
	 */
	return FUNC2(global_ehv_pic->irqhost, irq);
}