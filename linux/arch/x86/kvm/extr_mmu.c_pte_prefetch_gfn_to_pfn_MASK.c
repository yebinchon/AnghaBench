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
struct kvm_memory_slot {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PFN_ERR_FAULT ; 
 struct kvm_memory_slot* FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_memory_slot*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kvm_pfn_t FUNC2(struct kvm_vcpu *vcpu, gfn_t gfn,
				     bool no_dirty_log)
{
	struct kvm_memory_slot *slot;

	slot = FUNC0(vcpu, gfn, no_dirty_log);
	if (!slot)
		return KVM_PFN_ERR_FAULT;

	return FUNC1(slot, gfn);
}