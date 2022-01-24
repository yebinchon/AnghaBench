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
struct TYPE_2__ {int /*<<< orphan*/  exit_userspace; } ;
struct kvm_vcpu {TYPE_1__ stat; int /*<<< orphan*/  vcpu_id; int /*<<< orphan*/  kvm; } ;
struct kvm_run {int kvm_valid_regs; int kvm_dirty_regs; int /*<<< orphan*/  exit_reason; scalar_t__ immediate_exit; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int EREMOTE ; 
 int /*<<< orphan*/  KVM_EXIT_INTR ; 
 int KVM_SYNC_S390_VALID_FIELDS ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,struct kvm_run*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,struct kvm_run*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 

int FUNC17(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
	int rc;

	if (kvm_run->immediate_exit)
		return -EINTR;

	if (kvm_run->kvm_valid_regs & ~KVM_SYNC_S390_VALID_FIELDS ||
	    kvm_run->kvm_dirty_regs & ~KVM_SYNC_S390_VALID_FIELDS)
		return -EINVAL;

	FUNC15(vcpu);

	if (FUNC3(vcpu)) {
		FUNC5(vcpu);
		rc = 0;
		goto out;
	}

	FUNC8(vcpu);

	if (!FUNC6(vcpu->kvm)) {
		FUNC7(vcpu);
	} else if (FUNC4(vcpu)) {
		FUNC11("can't run stopped vcpu %d\n",
				   vcpu->vcpu_id);
		rc = -EINVAL;
		goto out;
	}

	FUNC14(vcpu, kvm_run);
	FUNC2(vcpu);

	FUNC10();
	rc = FUNC0(vcpu);

	if (FUNC12(current) && !rc) {
		kvm_run->exit_reason = KVM_EXIT_INTR;
		rc = -EINTR;
	}

	if (FUNC3(vcpu) && !rc)  {
		FUNC5(vcpu);
		rc = 0;
	}

	if (rc == -EREMOTE) {
		/* userspace support is needed, kvm_run has been prepared */
		rc = 0;
	}

	FUNC1(vcpu);
	FUNC13(vcpu, kvm_run);

	FUNC9(vcpu);

	vcpu->stat.exit_userspace++;
out:
	FUNC16(vcpu);
	return rc;
}