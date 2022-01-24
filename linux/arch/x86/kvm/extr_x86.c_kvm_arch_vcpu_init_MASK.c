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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_5__ {int mcg_cap; int pending_external_vector; int preempted_in_kernel; scalar_t__ pio_data; int /*<<< orphan*/  mce_banks; int /*<<< orphan*/  pat; int /*<<< orphan*/  maxphyaddr; scalar_t__ guest_xstate_size; int /*<<< orphan*/  wbinvd_dirty_mask; int /*<<< orphan*/  apicv_active; int /*<<< orphan*/  mp_state; TYPE_1__ emulate_ctxt; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_enable_apicv ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int KVM_MAX_MCE_BANKS ; 
 int /*<<< orphan*/  KVM_MP_STATE_RUNNABLE ; 
 int /*<<< orphan*/  KVM_MP_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  MSR_IA32_CR_PAT_DEFAULT ; 
 scalar_t__ XSAVE_HDR_OFFSET ; 
 scalar_t__ XSAVE_HDR_SIZE ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  emulate_ops ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  kvm_no_apic_vcpu ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*) ; 
 TYPE_3__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lapic_timer_advance_ns ; 
 int /*<<< orphan*/  max_tsc_khz ; 
 scalar_t__ FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC20(struct kvm_vcpu *vcpu)
{
	struct page *page;
	int r;

	vcpu->arch.emulate_ctxt.ops = &emulate_ops;
	if (!FUNC4(vcpu->kvm) || FUNC14(vcpu))
		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
	else
		vcpu->arch.mp_state = KVM_MP_STATE_UNINITIALIZED;

	page = FUNC0(GFP_KERNEL | __GFP_ZERO);
	if (!page) {
		r = -ENOMEM;
		goto fail;
	}
	vcpu->arch.pio_data = FUNC16(page);

	FUNC13(vcpu, max_tsc_khz);

	r = FUNC10(vcpu);
	if (r < 0)
		goto fail_free_pio_data;

	if (FUNC4(vcpu->kvm)) {
		vcpu->arch.apicv_active = kvm_x86_ops->get_enable_apicv(vcpu);
		r = FUNC7(vcpu, lapic_timer_advance_ns);
		if (r < 0)
			goto fail_mmu_destroy;
	} else
		FUNC17(&kvm_no_apic_vcpu);

	vcpu->arch.mce_banks = FUNC15(KVM_MAX_MCE_BANKS * sizeof(u64) * 4,
				       GFP_KERNEL_ACCOUNT);
	if (!vcpu->arch.mce_banks) {
		r = -ENOMEM;
		goto fail_free_lapic;
	}
	vcpu->arch.mcg_cap = KVM_MAX_MCE_BANKS;

	if (!FUNC19(&vcpu->arch.wbinvd_dirty_mask,
				GFP_KERNEL_ACCOUNT)) {
		r = -ENOMEM;
		goto fail_free_mce_banks;
	}

	FUNC3(vcpu);

	vcpu->arch.guest_xstate_size = XSAVE_HDR_SIZE + XSAVE_HDR_OFFSET;

	vcpu->arch.maxphyaddr = FUNC1(vcpu);

	vcpu->arch.pat = MSR_IA32_CR_PAT_DEFAULT;

	FUNC6(vcpu);
	FUNC12(vcpu);

	vcpu->arch.pending_external_vector = -1;
	vcpu->arch.preempted_in_kernel = false;

	FUNC9(vcpu);

	return 0;

fail_free_mce_banks:
	FUNC5(vcpu->arch.mce_banks);
fail_free_lapic:
	FUNC8(vcpu);
fail_mmu_destroy:
	FUNC11(vcpu);
fail_free_pio_data:
	FUNC2((unsigned long)vcpu->arch.pio_data);
fail:
	return r;
}