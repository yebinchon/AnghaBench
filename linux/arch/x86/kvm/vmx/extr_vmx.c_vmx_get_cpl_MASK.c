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
struct TYPE_2__ {int /*<<< orphan*/  vm86_active; } ;
struct vcpu_vmx {TYPE_1__ rmode; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int FUNC0 (int) ; 
 struct vcpu_vmx* FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 

int FUNC4(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC1(vcpu);

	if (FUNC2(vmx->rmode.vm86_active))
		return 0;
	else {
		int ar = FUNC3(vmx, VCPU_SREG_SS);
		return FUNC0(ar);
	}
}