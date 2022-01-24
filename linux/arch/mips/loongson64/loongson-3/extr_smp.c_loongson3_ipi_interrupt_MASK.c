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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int IPI_IRQ_OFFSET ; 
 unsigned int SMP_ASK_C0COUNT ; 
 unsigned int SMP_CALL_FUNCTION ; 
 unsigned int SMP_RESCHEDULE_YOURSELF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int* core0_c0count ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * ipi_clear0_regs ; 
 int /*<<< orphan*/ * ipi_status0_regs ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 

void FUNC13(struct pt_regs *regs)
{
	int i, cpu = FUNC12();
	unsigned int action, c0count, irqs;

	/* Load the ipi register to figure out what we're supposed to do */
	action = FUNC8(ipi_status0_regs[FUNC2(cpu)]);
	irqs = action >> IPI_IRQ_OFFSET;

	/* Clear the ipi register to clear the interrupt */
	FUNC9((u32)action, ipi_clear0_regs[FUNC2(cpu)]);

	if (action & SMP_RESCHEDULE_YOURSELF)
		FUNC11();

	if (action & SMP_CALL_FUNCTION) {
		FUNC6();
		FUNC5();
		FUNC7();
	}

	if (action & SMP_ASK_C0COUNT) {
		FUNC0(cpu != 0);
		c0count = FUNC10();
		c0count = c0count ? c0count : 1;
		for (i = 1; i < nr_cpu_ids; i++)
			core0_c0count[i] = c0count;
		FUNC1(); /* Let others see the result ASAP */
	}

	if (irqs) {
		int irq;
		while ((irq = FUNC4(irqs))) {
			FUNC3(irq-1);
			irqs &= ~(1<<(irq-1));
		}
	}
}