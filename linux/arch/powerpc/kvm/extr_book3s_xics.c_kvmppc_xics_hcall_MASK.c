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
typedef  int u32 ;
struct kvmppc_xics {scalar_t__ real_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  icp; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct TYPE_5__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;

/* Variables and functions */
#define  H_CPPR 133 
#define  H_EOI 132 
 int H_HARDWARE ; 
#define  H_IPI 131 
#define  H_IPOLL 130 
 int H_SUCCESS ; 
#define  H_XIRR 129 
#define  H_XIRR_X 128 
 unsigned long FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int,unsigned long) ; 
 int FUNC9 (struct kvm_vcpu*,int) ; 

int FUNC10(struct kvm_vcpu *vcpu, u32 req)
{
	struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
	unsigned long res;
	int rc = H_SUCCESS;

	/* Check if we have an ICP */
	if (!xics || !vcpu->arch.icp)
		return H_HARDWARE;

	/* These requests don't have real-mode implementations at present */
	switch (req) {
	case H_XIRR_X:
		res = FUNC7(vcpu);
		FUNC8(vcpu, 4, res);
		FUNC8(vcpu, 5, FUNC0());
		return rc;
	case H_IPOLL:
		rc = FUNC6(vcpu, FUNC2(vcpu, 4));
		return rc;
	}

	/* Check for real mode returning too hard */
	if (xics->real_mode && FUNC1(vcpu->kvm))
		return FUNC9(vcpu, req);

	switch (req) {
	case H_XIRR:
		res = FUNC7(vcpu);
		FUNC8(vcpu, 4, res);
		break;
	case H_CPPR:
		FUNC3(vcpu, FUNC2(vcpu, 4));
		break;
	case H_EOI:
		rc = FUNC4(vcpu, FUNC2(vcpu, 4));
		break;
	case H_IPI:
		rc = FUNC5(vcpu, FUNC2(vcpu, 4),
				  FUNC2(vcpu, 5));
		break;
	}

	return rc;
}