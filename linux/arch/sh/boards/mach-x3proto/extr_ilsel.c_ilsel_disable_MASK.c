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
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ilsel_level_map ; 
 unsigned long FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 

void FUNC6(unsigned int irq)
{
	unsigned long addr;
	unsigned int tmp;

	FUNC5("disabling ILSEL set %d\n", irq);

	addr = FUNC3(irq);

	tmp = FUNC0(addr);
	tmp &= ~(0xf << FUNC4(irq));
	FUNC1(tmp, addr);

	FUNC2(irq, &ilsel_level_map);
}