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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  guest_debug; } ;
struct kvm_s390_pgm_info {int /*<<< orphan*/  per_address; int /*<<< orphan*/  per_code; int /*<<< orphan*/  code; } ;
struct TYPE_3__ {int* gcr; int /*<<< orphan*/  gpsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_GUESTDBG_EXIT_PENDING ; 
 int /*<<< orphan*/  PER_CODE_IFETCH ; 
 int PER_EVENT_IFETCH ; 
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 int /*<<< orphan*/  PGM_PER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (unsigned long,int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm_vcpu*,struct kvm_s390_pgm_info*) ; 
 int FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct kvm_vcpu*,unsigned long*) ; 

int FUNC9(struct kvm_vcpu *vcpu)
{
	const u64 cr10 = vcpu->arch.sie_block->gcr[10];
	const u64 cr11 = vcpu->arch.sie_block->gcr[11];
	const u8 ilen = FUNC5(vcpu);
	struct kvm_s390_pgm_info pgm_info = {
		.code = PGM_PER,
		.per_code = PER_CODE_IFETCH,
		.per_address = FUNC0(vcpu->arch.sie_block->gpsw, ilen),
	};
	unsigned long fetched_addr;
	int rc;

	/*
	 * The PSW points to the next instruction, therefore the intercepted
	 * instruction generated a PER i-fetch event. PER address therefore
	 * points at the previous PSW address (could be an EXECUTE function).
	 */
	if (!FUNC3(vcpu))
		return FUNC6(vcpu, &pgm_info);

	if (FUNC1(vcpu, pgm_info.per_code, pgm_info.per_address))
		vcpu->guest_debug |= KVM_GUESTDBG_EXIT_PENDING;

	if (!FUNC2(vcpu) ||
	    !(vcpu->arch.sie_block->gcr[9] & PER_EVENT_IFETCH))
		return 0;

	rc = FUNC8(vcpu, &fetched_addr);
	if (rc < 0)
		return rc;
	if (rc)
		/* instruction-fetching exceptions */
		return FUNC7(vcpu, PGM_ADDRESSING);

	if (FUNC4(fetched_addr, cr10, cr11))
		return FUNC6(vcpu, &pgm_info);
	return 0;
}