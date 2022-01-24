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
typedef  scalar_t__ kvm_pfn_t ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ KVM_PFN_ERR_HWPOISON ; 
 scalar_t__ KVM_PFN_ERR_RO_FAULT ; 
 int RET_PF_EMULATE ; 
 int RET_PF_RETRY ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu, gfn_t gfn, kvm_pfn_t pfn)
{
	/*
	 * Do not cache the mmio info caused by writing the readonly gfn
	 * into the spte otherwise read access on readonly gfn also can
	 * caused mmio page fault and treat it as mmio access.
	 */
	if (pfn == KVM_PFN_ERR_RO_FAULT)
		return RET_PF_EMULATE;

	if (pfn == KVM_PFN_ERR_HWPOISON) {
		FUNC0(FUNC1(vcpu, gfn), current);
		return RET_PF_RETRY;
	}

	return -EFAULT;
}