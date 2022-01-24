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
union kvm_mmu_extended_role {int cr0_pg; int cr4_pae; int cr4_smep; int cr4_smap; int cr4_pse; int cr4_pke; int cr4_la57; int valid; int /*<<< orphan*/  maxphyaddr; int /*<<< orphan*/  member_0; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_CR4_LA57 ; 
 int /*<<< orphan*/  X86_CR4_PKE ; 
 int /*<<< orphan*/  X86_CR4_SMAP ; 
 int /*<<< orphan*/  X86_CR4_SMEP ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static union kvm_mmu_extended_role FUNC5(struct kvm_vcpu *vcpu)
{
	union kvm_mmu_extended_role ext = {0};

	ext.cr0_pg = !!FUNC2(vcpu);
	ext.cr4_pae = !!FUNC1(vcpu);
	ext.cr4_smep = !!FUNC4(vcpu, X86_CR4_SMEP);
	ext.cr4_smap = !!FUNC4(vcpu, X86_CR4_SMAP);
	ext.cr4_pse = !!FUNC3(vcpu);
	ext.cr4_pke = !!FUNC4(vcpu, X86_CR4_PKE);
	ext.cr4_la57 = !!FUNC4(vcpu, X86_CR4_LA57);
	ext.maxphyaddr = FUNC0(vcpu);

	ext.valid = 1;

	return ext;
}