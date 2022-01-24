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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_TLB_FLUSH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu)
{
	int r = 1; /* Indicate we want to get back into the guest */

	/* We misuse TLB_FLUSH to indicate that we want to clear
	   all shadow cache entries */
	if (FUNC0(KVM_REQ_TLB_FLUSH, vcpu))
		FUNC1(vcpu, 0, 0);

	return r;
}