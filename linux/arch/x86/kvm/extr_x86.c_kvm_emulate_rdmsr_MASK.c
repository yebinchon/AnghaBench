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
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,unsigned int) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct kvm_vcpu *vcpu)
{
	u32 ecx = FUNC3(vcpu);
	u64 data;

	if (FUNC0(vcpu, ecx, &data)) {
		FUNC7(ecx);
		FUNC1(vcpu, 0);
		return 1;
	}

	FUNC6(ecx, data);

	FUNC2(vcpu, data & -1u);
	FUNC4(vcpu, (data >> 32) & -1u);
	return FUNC5(vcpu);
}