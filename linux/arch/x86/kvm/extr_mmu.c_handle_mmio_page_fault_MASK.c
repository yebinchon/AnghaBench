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
typedef  scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int EINVAL ; 
 int RET_PF_EMULATE ; 
 int RET_PF_INVALID ; 
 int RET_PF_RETRY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct kvm_vcpu*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu, u64 addr, bool direct)
{
	u64 spte;
	bool reserved;

	if (FUNC5(vcpu, addr, direct))
		return RET_PF_EMULATE;

	reserved = FUNC8(vcpu, addr, &spte);
	if (FUNC0(reserved))
		return -EINVAL;

	if (FUNC4(spte)) {
		gfn_t gfn = FUNC3(spte);
		unsigned access = FUNC2(spte);

		if (!FUNC1(vcpu, spte))
			return RET_PF_INVALID;

		if (direct)
			addr = 0;

		FUNC6(addr, gfn, access);
		FUNC7(vcpu, addr, gfn, access);
		return RET_PF_EMULATE;
	}

	/*
	 * If the page table is zapped by other cpus, let CPU fault again on
	 * the address.
	 */
	return RET_PF_RETRY;
}