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
struct platform_device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,void*) ; 
 int /*<<< orphan*/  pcic_irq ; 

unsigned int FUNC4(struct platform_device *op,
                                   unsigned int real_irq)
{
	unsigned int irq;
	unsigned long mask;

	irq = 0;
	mask = FUNC0(real_irq);
	if (mask == 0)
		goto out;

	irq = FUNC1(real_irq, real_irq);
	if (irq == 0)
		goto out;

	FUNC2(irq, &pcic_irq,
	                              handle_level_irq, "PCIC");
	FUNC3(irq, (void *)mask);

out:
	return irq;
}