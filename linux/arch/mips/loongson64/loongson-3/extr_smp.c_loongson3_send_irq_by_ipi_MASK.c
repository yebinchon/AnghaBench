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
 int IPI_IRQ_OFFSET ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/ * ipi_set0_regs ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(int cpu, int irqs)
{
	FUNC1(irqs << IPI_IRQ_OFFSET, ipi_set0_regs[FUNC0(cpu)]);
}