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
struct x86_exception {int error_code_valid; int nested_page_fault; int async_page_fault; int /*<<< orphan*/  address; scalar_t__ error_code; int /*<<< orphan*/  vector; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  token; int /*<<< orphan*/  gfn; } ;
struct kvm_async_pf {TYPE_1__ arch; int /*<<< orphan*/  gva; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PV_REASON_PAGE_NOT_PRESENT ; 
 int /*<<< orphan*/  KVM_REQ_APF_HALT ; 
 int /*<<< orphan*/  PF_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct x86_exception*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct kvm_vcpu *vcpu,
				     struct kvm_async_pf *work)
{
	struct x86_exception fault;

	FUNC5(work->arch.token, work->gva);
	FUNC1(vcpu, work->arch.gfn);

	if (FUNC2(vcpu) &&
	    !FUNC0(vcpu, KVM_PV_REASON_PAGE_NOT_PRESENT)) {
		fault.vector = PF_VECTOR;
		fault.error_code_valid = true;
		fault.error_code = 0;
		fault.nested_page_fault = false;
		fault.address = work->arch.token;
		fault.async_page_fault = true;
		FUNC3(vcpu, &fault);
	} else {
		/*
		 * It is not possible to deliver a paravirtualized asynchronous
		 * page fault, but putting the guest in an artificial halt state
		 * can be beneficial nevertheless: if an interrupt arrives, we
		 * can deliver it timely and perhaps the guest will schedule
		 * another process.  When the instruction that triggered a page
		 * fault is retried, hopefully the page will be ready in the host.
		 */
		FUNC4(KVM_REQ_APF_HALT, vcpu);
	}
}