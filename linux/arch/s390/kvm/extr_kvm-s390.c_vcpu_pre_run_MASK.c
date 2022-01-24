#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_6__* sie_block; } ;
struct kvm_vcpu {TYPE_7__ arch; TYPE_8__* kvm; int /*<<< orphan*/  vcpu_id; TYPE_3__* run; } ;
struct TYPE_12__ {int /*<<< orphan*/  kicked_mask; } ;
struct TYPE_13__ {TYPE_4__ gisa_int; } ;
struct TYPE_16__ {TYPE_5__ arch; } ;
struct TYPE_14__ {int /*<<< orphan*/  cpuflags; scalar_t__ icptcode; int /*<<< orphan*/  gg15; int /*<<< orphan*/  gg14; } ;
struct TYPE_9__ {int /*<<< orphan*/ * gprs; } ;
struct TYPE_10__ {TYPE_1__ regs; } ;
struct TYPE_11__ {TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIF_MCCK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 int FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC15(struct kvm_vcpu *vcpu)
{
	int rc, cpuflags;

	/*
	 * On s390 notifications for arriving pages will be delivered directly
	 * to the guest but the house keeping for completed pfaults is
	 * handled outside the worker.
	 */
	FUNC4(vcpu);

	vcpu->arch.sie_block->gg14 = vcpu->run->s.regs.gprs[14];
	vcpu->arch.sie_block->gg15 = vcpu->run->s.regs.gprs[15];

	if (FUNC10())
		FUNC12();

	if (FUNC13(CIF_MCCK_PENDING))
		FUNC11();

	if (!FUNC5(vcpu->kvm)) {
		rc = FUNC7(vcpu);
		if (rc)
			return rc;
	}

	rc = FUNC8(vcpu);
	if (rc)
		return rc;

	if (FUNC3(vcpu)) {
		FUNC6(vcpu);
		FUNC9(vcpu);
	}

	FUNC2(vcpu->vcpu_id, vcpu->kvm->arch.gisa_int.kicked_mask);

	vcpu->arch.sie_block->icptcode = 0;
	cpuflags = FUNC1(&vcpu->arch.sie_block->cpuflags);
	FUNC0(vcpu, 6, "entering sie flags %x", cpuflags);
	FUNC14(vcpu, cpuflags);

	return 0;
}