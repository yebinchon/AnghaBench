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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq_err_count ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

void FUNC2(unsigned int irq)
{
	FUNC0(&irq_err_count);
	FUNC1("unexpected IRQ trap at vector %02x\n", irq);
}