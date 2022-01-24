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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dbsr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
#define  BOOKE_INTERRUPT_CRITICAL 135 
#define  BOOKE_INTERRUPT_DEBUG 134 
#define  BOOKE_INTERRUPT_DECREMENTER 133 
#define  BOOKE_INTERRUPT_DOORBELL 132 
#define  BOOKE_INTERRUPT_EXTERNAL 131 
#define  BOOKE_INTERRUPT_MACHINE_CHECK 130 
#define  BOOKE_INTERRUPT_PERFORMANCE_MONITOR 129 
#define  BOOKE_INTERRUPT_WATCHDOG 128 
 int /*<<< orphan*/  SPRN_DBSR ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu,
				     unsigned int exit_nr)
{
	struct pt_regs regs;

	switch (exit_nr) {
	case BOOKE_INTERRUPT_EXTERNAL:
		FUNC4(&regs);
		FUNC1(&regs);
		break;
	case BOOKE_INTERRUPT_DECREMENTER:
		FUNC4(&regs);
		FUNC7(&regs);
		break;
#if defined(CONFIG_PPC_DOORBELL)
	case BOOKE_INTERRUPT_DOORBELL:
		kvmppc_fill_pt_regs(&regs);
		doorbell_exception(&regs);
		break;
#endif
	case BOOKE_INTERRUPT_MACHINE_CHECK:
		/* FIXME */
		break;
	case BOOKE_INTERRUPT_PERFORMANCE_MONITOR:
		FUNC4(&regs);
		FUNC6(&regs);
		break;
	case BOOKE_INTERRUPT_WATCHDOG:
		FUNC4(&regs);
#ifdef CONFIG_BOOKE_WDT
		WatchdogException(&regs);
#else
		FUNC8(&regs);
#endif
		break;
	case BOOKE_INTERRUPT_CRITICAL:
		FUNC4(&regs);
		FUNC8(&regs);
		break;
	case BOOKE_INTERRUPT_DEBUG:
		/* Save DBSR before preemption is enabled */
		vcpu->arch.dbsr = FUNC5(SPRN_DBSR);
		FUNC3();
		break;
	}
}