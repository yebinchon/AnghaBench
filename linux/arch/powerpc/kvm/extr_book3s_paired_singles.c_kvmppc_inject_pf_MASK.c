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
typedef  int /*<<< orphan*/  ulong ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOK3S_INTERRUPT_DATA_STORAGE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu, ulong eaddr, bool is_store)
{
	u32 dsisr;
	u64 msr = FUNC1(vcpu);

	msr = FUNC4(msr, 33, 36, 0);
	msr = FUNC4(msr, 42, 47, 0);
	FUNC5(vcpu, msr);
	FUNC2(vcpu, eaddr);
	/* Page Fault */
	dsisr = FUNC4(0, 33, 33, 1);
	if (is_store)
		dsisr = FUNC4(dsisr, 38, 38, 1);
	FUNC3(vcpu, dsisr);
	FUNC0(vcpu, BOOK3S_INTERRUPT_DATA_STORAGE);
}