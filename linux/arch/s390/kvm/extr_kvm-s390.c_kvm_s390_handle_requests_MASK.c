#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_5__* sie_block; int /*<<< orphan*/  gmap; } ;
struct kvm_vcpu {TYPE_6__ arch; TYPE_4__* kvm; int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_11__ {int ihcpu; int /*<<< orphan*/  ecb2; int /*<<< orphan*/  ictl; } ;
struct TYPE_7__ {scalar_t__ use_cmma; } ;
struct TYPE_10__ {TYPE_3__* mm; TYPE_1__ arch; } ;
struct TYPE_8__ {scalar_t__ uses_cmm; } ;
struct TYPE_9__ {TYPE_2__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSTAT_IBS ; 
 int /*<<< orphan*/  ECB2_CMMA ; 
 int /*<<< orphan*/  ICTL_OPEREXC ; 
 int /*<<< orphan*/  KVM_REQ_DISABLE_IBS ; 
 int /*<<< orphan*/  KVM_REQ_ENABLE_IBS ; 
 int /*<<< orphan*/  KVM_REQ_ICPT_OPEREXC ; 
 int /*<<< orphan*/  KVM_REQ_MMU_RELOAD ; 
 int /*<<< orphan*/  KVM_REQ_START_MIGRATION ; 
 int /*<<< orphan*/  KVM_REQ_STOP_MIGRATION ; 
 int /*<<< orphan*/  KVM_REQ_TLB_FLUSH ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  KVM_REQ_VSIE_RESTART ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PROT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct kvm_vcpu *vcpu)
{
retry:
	FUNC9(vcpu);
	if (!FUNC5(vcpu))
		return 0;
	/*
	 * We use MMU_RELOAD just to re-arm the ipte notifier for the
	 * guest prefix page. gmap_mprotect_notify will wait on the ptl lock.
	 * This ensures that the ipte instruction for this request has
	 * already finished. We might race against a second unmapper that
	 * wants to set the blocking bit. Lets just retry the request loop.
	 */
	if (FUNC2(KVM_REQ_MMU_RELOAD, vcpu)) {
		int rc;
		rc = FUNC0(vcpu->arch.gmap,
					  FUNC7(vcpu),
					  PAGE_SIZE * 2, PROT_WRITE);
		if (rc) {
			FUNC4(KVM_REQ_MMU_RELOAD, vcpu);
			return rc;
		}
		goto retry;
	}

	if (FUNC2(KVM_REQ_TLB_FLUSH, vcpu)) {
		vcpu->arch.sie_block->ihcpu = 0xffff;
		goto retry;
	}

	if (FUNC2(KVM_REQ_ENABLE_IBS, vcpu)) {
		if (!FUNC1(vcpu)) {
			FUNC10(vcpu->vcpu_id, 1);
			FUNC8(vcpu, CPUSTAT_IBS);
		}
		goto retry;
	}

	if (FUNC2(KVM_REQ_DISABLE_IBS, vcpu)) {
		if (FUNC1(vcpu)) {
			FUNC10(vcpu->vcpu_id, 0);
			FUNC6(vcpu, CPUSTAT_IBS);
		}
		goto retry;
	}

	if (FUNC2(KVM_REQ_ICPT_OPEREXC, vcpu)) {
		vcpu->arch.sie_block->ictl |= ICTL_OPEREXC;
		goto retry;
	}

	if (FUNC2(KVM_REQ_START_MIGRATION, vcpu)) {
		/*
		 * Disable CMM virtualization; we will emulate the ESSA
		 * instruction manually, in order to provide additional
		 * functionalities needed for live migration.
		 */
		vcpu->arch.sie_block->ecb2 &= ~ECB2_CMMA;
		goto retry;
	}

	if (FUNC2(KVM_REQ_STOP_MIGRATION, vcpu)) {
		/*
		 * Re-enable CMM virtualization if CMMA is available and
		 * CMM has been used.
		 */
		if ((vcpu->kvm->arch.use_cmma) &&
		    (vcpu->kvm->mm->context.uses_cmm))
			vcpu->arch.sie_block->ecb2 |= ECB2_CMMA;
		goto retry;
	}

	/* nothing to do, just clear the request */
	FUNC3(KVM_REQ_UNHALT, vcpu);
	/* we left the vsie handler, nothing to do, just clear the request */
	FUNC3(KVM_REQ_VSIE_RESTART, vcpu);

	return 0;
}