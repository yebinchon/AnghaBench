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

/* Variables and functions */
 int /*<<< orphan*/  grpci2_irq ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,void*) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned int irq)
{
	unsigned int virq = 0, pil;

	pil = 1 << 8;
	virq = FUNC0(irq, pil);
	if (virq == 0)
		goto out;

	FUNC1(virq, &grpci2_irq, handle_simple_irq,
				      "pcilvl");
	FUNC2(virq, (void *)irq);

out:
	return virq;
}