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
struct kvm_ppc_smmu_info {int data_keys; int instr_keys; int flags; int slb_size; struct kvm_ppc_one_seg_page_size* sps; } ;
struct kvm_ppc_one_seg_page_size {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_207S ; 
 int KVM_PPC_1T_SEGMENTS ; 
 int KVM_PPC_NO_HASH ; 
 int KVM_PPC_PAGE_SIZES_REAL ; 
 int SLB_VSID_L ; 
 int SLB_VSID_LP_01 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_ppc_one_seg_page_size**,int,int) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm,
					 struct kvm_ppc_smmu_info *info)
{
	struct kvm_ppc_one_seg_page_size *sps;

	/*
	 * POWER7, POWER8 and POWER9 all support 32 storage keys for data.
	 * POWER7 doesn't support keys for instruction accesses,
	 * POWER8 and POWER9 do.
	 */
	info->data_keys = 32;
	info->instr_keys = FUNC0(CPU_FTR_ARCH_207S) ? 32 : 0;

	/* POWER7, 8 and 9 all have 1T segments and 32-entry SLB */
	info->flags = KVM_PPC_PAGE_SIZES_REAL | KVM_PPC_1T_SEGMENTS;
	info->slb_size = 32;

	/* We only support these sizes for now, and no muti-size segments */
	sps = &info->sps[0];
	FUNC2(&sps, 12, 0);
	FUNC2(&sps, 16, SLB_VSID_L | SLB_VSID_LP_01);
	FUNC2(&sps, 24, SLB_VSID_L);

	/* If running as a nested hypervisor, we don't support HPT guests */
	if (FUNC1())
		info->flags |= KVM_PPC_NO_HASH;

	return 0;
}