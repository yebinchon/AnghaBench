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
 int /*<<< orphan*/  CONFIG_KEXEC_CORE ; 
#define  IPI_CALL_FUNC 134 
#define  IPI_CPU_CRASH_STOP 133 
#define  IPI_CPU_STOP 132 
#define  IPI_IRQ_WORK 131 
#define  IPI_RESCHEDULE 130 
#define  IPI_TIMER 129 
#define  IPI_WAKEUP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int NR_IPI ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct pt_regs*) ; 
 int /*<<< orphan*/ * ipi_irqs ; 
 int /*<<< orphan*/ * ipi_types ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct pt_regs* FUNC12 (struct pt_regs*) ; 
 unsigned int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

void FUNC18(int ipinr, struct pt_regs *regs)
{
	unsigned int cpu = FUNC13();
	struct pt_regs *old_regs = FUNC12(regs);

	if ((unsigned)ipinr < NR_IPI) {
		FUNC15(ipi_types[ipinr]);
		FUNC2(cpu, ipi_irqs[ipinr]);
	}

	switch (ipinr) {
	case IPI_RESCHEDULE:
		FUNC11();
		break;

	case IPI_CALL_FUNC:
		FUNC6();
		FUNC4();
		FUNC7();
		break;

	case IPI_CPU_STOP:
		FUNC6();
		FUNC9();
		FUNC7();
		break;

	case IPI_CPU_CRASH_STOP:
		if (FUNC0(CONFIG_KEXEC_CORE)) {
			FUNC6();
			FUNC5(cpu, regs);

			FUNC17();
		}
		break;

#ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
	case IPI_TIMER:
		irq_enter();
		tick_receive_broadcast();
		irq_exit();
		break;
#endif

#ifdef CONFIG_IRQ_WORK
	case IPI_IRQ_WORK:
		irq_enter();
		irq_work_run();
		irq_exit();
		break;
#endif

#ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
	case IPI_WAKEUP:
		WARN_ONCE(!acpi_parking_protocol_valid(cpu),
			  "CPU%u: Wake-up IPI outside the ACPI parking protocol\n",
			  cpu);
		break;
#endif

	default:
		FUNC10("CPU%u: Unknown IPI message 0x%x\n", cpu, ipinr);
		break;
	}

	if ((unsigned)ipinr < NR_IPI)
		FUNC16(ipi_types[ipinr]);
	FUNC12(old_regs);
}