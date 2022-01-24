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
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
#define  APIC_ARBPRI 131 
#define  APIC_PROCPRI 130 
#define  APIC_TASKPRI 129 
#define  APIC_TMCCT 128 
 unsigned int LAPIC_MMIO_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*,int) ; 

__attribute__((used)) static u32 FUNC5(struct kvm_lapic *apic, unsigned int offset)
{
	u32 val = 0;

	if (offset >= LAPIC_MMIO_LENGTH)
		return 0;

	switch (offset) {
	case APIC_ARBPRI:
		break;

	case APIC_TMCCT:	/* Timer CCR */
		if (FUNC1(apic))
			return 0;

		val = FUNC0(apic);
		break;
	case APIC_PROCPRI:
		FUNC2(apic);
		val = FUNC3(apic, offset);
		break;
	case APIC_TASKPRI:
		FUNC4(apic, false);
		/* fall thru */
	default:
		val = FUNC3(apic, offset);
		break;
	}

	return val;
}