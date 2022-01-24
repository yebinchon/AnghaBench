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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun4v_virq ; 

unsigned int FUNC2(u32 devhandle, unsigned int devino)
{
	int irq;

	irq = FUNC0(devhandle, devino, &sun4v_virq);
	if (!irq)
		goto out;

	/* This is borrowed from the original function.
	 */
	FUNC1(irq, IRQ_NOAUTOEN);

out:
	return irq;
}