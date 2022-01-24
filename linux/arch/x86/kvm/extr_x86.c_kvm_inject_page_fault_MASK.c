#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct x86_exception {int /*<<< orphan*/  address; int /*<<< orphan*/  error_code; scalar_t__ async_page_fault; } ;
struct TYPE_5__ {int /*<<< orphan*/  nested_apf_token; } ;
struct TYPE_7__ {int nested_apf; } ;
struct TYPE_8__ {TYPE_1__ apf; TYPE_3__ exception; } ;
struct TYPE_6__ {int /*<<< orphan*/  pf_guest; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_2__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_VECTOR ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct kvm_vcpu *vcpu, struct x86_exception *fault)
{
	++vcpu->stat.pf_guest;
	vcpu->arch.exception.nested_apf =
		FUNC0(vcpu) && fault->async_page_fault;
	if (vcpu->arch.exception.nested_apf) {
		vcpu->arch.apf.nested_apf_token = fault->address;
		FUNC1(vcpu, PF_VECTOR, fault->error_code);
	} else {
		FUNC2(vcpu, PF_VECTOR, fault->error_code,
					fault->address);
	}
}