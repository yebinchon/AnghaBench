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
struct pt_regs {int dummy; } ;

/* Variables and functions */
#define  IPI_CALL_FUNC 135 
#define  IPI_COMPLETION 134 
#define  IPI_CPU_BACKTRACE 133 
#define  IPI_CPU_STOP 132 
#define  IPI_IRQ_WORK 131 
#define  IPI_RESCHEDULE 130 
#define  IPI_TIMER 129 
#define  IPI_WAKEUP 128 
 unsigned int NR_IPI ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/ * ipi_irqs ; 
 int /*<<< orphan*/ * ipi_types ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct pt_regs* FUNC12 (struct pt_regs*) ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(int ipinr, struct pt_regs *regs)
{
	unsigned int cpu = FUNC13();
	struct pt_regs *old_regs = FUNC12(regs);

	if ((unsigned)ipinr < NR_IPI) {
		FUNC15(ipi_types[ipinr]);
		FUNC0(cpu, ipi_irqs[ipinr]);
	}

	switch (ipinr) {
	case IPI_WAKEUP:
		break;

#ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
	case IPI_TIMER:
		irq_enter();
		tick_receive_broadcast();
		irq_exit();
		break;
#endif

	case IPI_RESCHEDULE:
		FUNC11();
		break;

	case IPI_CALL_FUNC:
		FUNC4();
		FUNC1();
		FUNC5();
		break;

	case IPI_CPU_STOP:
		FUNC4();
		FUNC3(cpu);
		FUNC5();
		break;

#ifdef CONFIG_IRQ_WORK
	case IPI_IRQ_WORK:
		irq_enter();
		irq_work_run();
		irq_exit();
		break;
#endif

	case IPI_COMPLETION:
		FUNC4();
		FUNC2(cpu);
		FUNC5();
		break;

	case IPI_CPU_BACKTRACE:
		FUNC9();
		FUNC4();
		FUNC7(regs);
		FUNC5();
		FUNC10();
		break;

	default:
		FUNC8("CPU%u: Unknown IPI message 0x%x\n",
		        cpu, ipinr);
		break;
	}

	if ((unsigned)ipinr < NR_IPI)
		FUNC16(ipi_types[ipinr]);
	FUNC12(old_regs);
}