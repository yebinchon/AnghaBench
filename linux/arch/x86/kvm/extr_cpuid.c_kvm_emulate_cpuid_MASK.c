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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct kvm_vcpu*) ; 

int FUNC10(struct kvm_vcpu *vcpu)
{
	u32 eax, ebx, ecx, edx;

	if (FUNC0(vcpu) && !FUNC8(vcpu, 0))
		return 1;

	eax = FUNC2(vcpu);
	ecx = FUNC5(vcpu);
	FUNC1(vcpu, &eax, &ebx, &ecx, &edx, true);
	FUNC3(vcpu, eax);
	FUNC4(vcpu, ebx);
	FUNC6(vcpu, ecx);
	FUNC7(vcpu, edx);
	return FUNC9(vcpu);
}