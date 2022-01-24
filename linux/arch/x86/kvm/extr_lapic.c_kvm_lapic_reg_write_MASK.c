#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct TYPE_4__ {int timer_mode_mask; int /*<<< orphan*/  timer; int /*<<< orphan*/  period; int /*<<< orphan*/  pending; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; int /*<<< orphan*/  divide_count; TYPE_1__* vcpu; } ;
struct TYPE_3__ {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
#define  APIC_DFR 145 
#define  APIC_EOI 144 
#define  APIC_ESR 143 
#define  APIC_ICR 142 
#define  APIC_ICR2 141 
#define  APIC_ID 140 
#define  APIC_LDR 139 
 int APIC_LDR_MASK ; 
 int APIC_LVR ; 
 int APIC_LVR_DIRECTED_EOI ; 
#define  APIC_LVT0 138 
#define  APIC_LVT1 137 
#define  APIC_LVTERR 136 
#define  APIC_LVTPC 135 
#define  APIC_LVTT 134 
#define  APIC_LVTTHMR 133 
 int APIC_LVT_MASKED ; 
#define  APIC_SELF_IPI 132 
#define  APIC_SPIV 131 
 int APIC_SPIV_APIC_ENABLED ; 
 int APIC_SPIV_DIRECTED_EOI ; 
#define  APIC_TASKPRI 130 
#define  APIC_TDCR 129 
#define  APIC_TMICT 128 
 int KVM_APIC_LVT_NUM ; 
 int* apic_lvt_mask ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_lapic*) ; 
 int FUNC13 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_lapic*,int const,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 

int FUNC22(struct kvm_lapic *apic, u32 reg, u32 val)
{
	int ret = 0;

	FUNC19(reg, val);

	switch (reg) {
	case APIC_ID:		/* Local APIC ID */
		if (!FUNC7(apic))
			FUNC11(apic, val >> 24);
		else
			ret = 1;
		break;

	case APIC_TASKPRI:
		FUNC16(apic, true);
		FUNC5(apic, val & 0xff);
		break;

	case APIC_EOI:
		FUNC3(apic);
		break;

	case APIC_LDR:
		if (!FUNC7(apic))
			FUNC10(apic, val & APIC_LDR_MASK);
		else
			ret = 1;
		break;

	case APIC_DFR:
		if (!FUNC7(apic)) {
			FUNC14(apic, APIC_DFR, val | 0x0FFFFFFF);
			FUNC15(apic->vcpu->kvm);
		} else
			ret = 1;
		break;

	case APIC_SPIV: {
		u32 mask = 0x3ff;
		if (FUNC13(apic, APIC_LVR) & APIC_LVR_DIRECTED_EOI)
			mask |= APIC_SPIV_DIRECTED_EOI;
		FUNC4(apic, val & mask);
		if (!(val & APIC_SPIV_APIC_ENABLED)) {
			int i;
			u32 lvt_val;

			for (i = 0; i < KVM_APIC_LVT_NUM; i++) {
				lvt_val = FUNC13(apic,
						       APIC_LVTT + 0x10 * i);
				FUNC14(apic, APIC_LVTT + 0x10 * i,
					     lvt_val | APIC_LVT_MASKED);
			}
			FUNC6(apic);
			FUNC8(&apic->lapic_timer.pending, 0);

		}
		break;
	}
	case APIC_ICR:
		/* No delay here, so we always clear the pending bit */
		val &= ~(1 << 12);
		FUNC2(apic, val, FUNC13(apic, APIC_ICR2));
		FUNC14(apic, APIC_ICR, val);
		break;

	case APIC_ICR2:
		if (!FUNC7(apic))
			val &= 0xff000000;
		FUNC14(apic, APIC_ICR2, val);
		break;

	case APIC_LVT0:
		FUNC1(apic, val);
		/* fall through */
	case APIC_LVTTHMR:
	case APIC_LVTPC:
	case APIC_LVT1:
	case APIC_LVTERR:
		/* TODO: Check vector */
		if (!FUNC12(apic))
			val |= APIC_LVT_MASKED;

		val &= apic_lvt_mask[(reg - APIC_LVTT) >> 4];
		FUNC14(apic, reg, val);

		break;

	case APIC_LVTT:
		if (!FUNC12(apic))
			val |= APIC_LVT_MASKED;
		val &= (apic_lvt_mask[0] | apic->lapic_timer.timer_mode_mask);
		FUNC14(apic, APIC_LVTT, val);
		FUNC6(apic);
		break;

	case APIC_TMICT:
		if (FUNC0(apic))
			break;

		FUNC9(&apic->lapic_timer.timer);
		FUNC14(apic, APIC_TMICT, val);
		FUNC18(apic);
		break;

	case APIC_TDCR: {
		uint32_t old_divisor = apic->divide_count;

		FUNC14(apic, APIC_TDCR, val);
		FUNC20(apic);
		if (apic->divide_count != old_divisor &&
				apic->lapic_timer.period) {
			FUNC9(&apic->lapic_timer.timer);
			FUNC21(apic, old_divisor);
			FUNC17(apic);
		}
		break;
	}
	case APIC_ESR:
		if (FUNC7(apic) && val != 0)
			ret = 1;
		break;

	case APIC_SELF_IPI:
		if (FUNC7(apic)) {
			FUNC22(apic, APIC_ICR, 0x40000 | (val & 0xff));
		} else
			ret = 1;
		break;
	default:
		ret = 1;
		break;
	}

	return ret;
}