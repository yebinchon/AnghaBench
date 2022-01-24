#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vmcs12 {int /*<<< orphan*/  msr_bitmap; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {scalar_t__ hva; } ;
struct TYPE_4__ {unsigned long* msr_bitmap; } ;
struct TYPE_5__ {struct kvm_host_map msr_bitmap_map; TYPE_1__ vmcs02; } ;
struct TYPE_6__ {TYPE_2__ nested; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_EOI ; 
 int /*<<< orphan*/  APIC_SELF_IPI ; 
 int /*<<< orphan*/  APIC_TASKPRI ; 
 int BITS_PER_LONG ; 
 int /*<<< orphan*/  CPU_BASED_USE_MSR_BITMAPS ; 
 int /*<<< orphan*/  MSR_FS_BASE ; 
 int /*<<< orphan*/  MSR_GS_BASE ; 
 int /*<<< orphan*/  MSR_IA32_PRED_CMD ; 
 int /*<<< orphan*/  MSR_IA32_SPEC_CTRL ; 
 int /*<<< orphan*/  MSR_KERNEL_GS_BASE ; 
 int MSR_TYPE_R ; 
 int MSR_TYPE_RW ; 
 int MSR_TYPE_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,struct kvm_host_map*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct kvm_host_map*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vmcs12*) ; 
 scalar_t__ FUNC9 (struct vmcs12*) ; 
 scalar_t__ FUNC10 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*,unsigned long*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC12 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline bool FUNC13(struct kvm_vcpu *vcpu,
						 struct vmcs12 *vmcs12)
{
	int msr;
	unsigned long *msr_bitmap_l1;
	unsigned long *msr_bitmap_l0 = FUNC12(vcpu)->nested.vmcs02.msr_bitmap;
	struct kvm_host_map *map = &FUNC12(vcpu)->nested.msr_bitmap_map;

	/* Nothing to do if the MSR bitmap is not in use.  */
	if (!FUNC1() ||
	    !FUNC7(vmcs12, CPU_BASED_USE_MSR_BITMAPS))
		return false;

	if (FUNC4(vcpu, FUNC3(vmcs12->msr_bitmap), map))
		return false;

	msr_bitmap_l1 = (unsigned long *)map->hva;

	/*
	 * To keep the control flow simple, pay eight 8-byte writes (sixteen
	 * 4-byte writes on 32-bit systems) up front to enable intercepts for
	 * the x2APIC MSR range and selectively disable them below.
	 */
	FUNC2(msr_bitmap_l0);

	if (FUNC10(vmcs12)) {
		if (FUNC8(vmcs12)) {
			/*
			 * L0 need not intercept reads for MSRs between 0x800
			 * and 0x8ff, it just lets the processor take the value
			 * from the virtual-APIC page; take those 256 bits
			 * directly from the L1 bitmap.
			 */
			for (msr = 0x800; msr <= 0x8ff; msr += BITS_PER_LONG) {
				unsigned word = msr / BITS_PER_LONG;

				msr_bitmap_l0[word] = msr_bitmap_l1[word];
			}
		}

		FUNC11(
			msr_bitmap_l1, msr_bitmap_l0,
			FUNC0(APIC_TASKPRI),
			MSR_TYPE_R | MSR_TYPE_W);

		if (FUNC9(vmcs12)) {
			FUNC11(
				msr_bitmap_l1, msr_bitmap_l0,
				FUNC0(APIC_EOI),
				MSR_TYPE_W);
			FUNC11(
				msr_bitmap_l1, msr_bitmap_l0,
				FUNC0(APIC_SELF_IPI),
				MSR_TYPE_W);
		}
	}

	/* KVM unconditionally exposes the FS/GS base MSRs to L1. */
	FUNC11(msr_bitmap_l1, msr_bitmap_l0,
					     MSR_FS_BASE, MSR_TYPE_RW);

	FUNC11(msr_bitmap_l1, msr_bitmap_l0,
					     MSR_GS_BASE, MSR_TYPE_RW);

	FUNC11(msr_bitmap_l1, msr_bitmap_l0,
					     MSR_KERNEL_GS_BASE, MSR_TYPE_RW);

	/*
	 * Checking the L0->L1 bitmap is trying to verify two things:
	 *
	 * 1. L0 gave a permission to L1 to actually passthrough the MSR. This
	 *    ensures that we do not accidentally generate an L02 MSR bitmap
	 *    from the L12 MSR bitmap that is too permissive.
	 * 2. That L1 or L2s have actually used the MSR. This avoids
	 *    unnecessarily merging of the bitmap if the MSR is unused. This
	 *    works properly because we only update the L01 MSR bitmap lazily.
	 *    So even if L0 should pass L1 these MSRs, the L01 bitmap is only
	 *    updated to reflect this when L1 (or its L2s) actually write to
	 *    the MSR.
	 */
	if (!FUNC6(vcpu, MSR_IA32_SPEC_CTRL))
		FUNC11(
					msr_bitmap_l1, msr_bitmap_l0,
					MSR_IA32_SPEC_CTRL,
					MSR_TYPE_R | MSR_TYPE_W);

	if (!FUNC6(vcpu, MSR_IA32_PRED_CMD))
		FUNC11(
					msr_bitmap_l1, msr_bitmap_l0,
					MSR_IA32_PRED_CMD,
					MSR_TYPE_W);

	FUNC5(vcpu, &FUNC12(vcpu)->nested.msr_bitmap_map, false);

	return true;
}