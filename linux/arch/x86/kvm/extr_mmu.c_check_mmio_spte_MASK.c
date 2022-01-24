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
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int generation; } ;

/* Variables and functions */
 int KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS ; 
 int MMIO_SPTE_GEN_MASK ; 
 int FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct kvm_vcpu *vcpu, u64 spte)
{
	u64 kvm_gen, spte_gen, gen;

	gen = FUNC1(vcpu)->generation;
	if (FUNC4(gen & KVM_MEMSLOT_GEN_UPDATE_IN_PROGRESS))
		return false;

	kvm_gen = gen & MMIO_SPTE_GEN_MASK;
	spte_gen = FUNC0(spte);

	FUNC3(spte, kvm_gen, spte_gen);
	return FUNC2(kvm_gen == spte_gen);
}