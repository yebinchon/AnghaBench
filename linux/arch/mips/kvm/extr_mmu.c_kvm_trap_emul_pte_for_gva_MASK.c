#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * pgd; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pgd; } ;
struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_6__ {TYPE_2__ guest_user_mm; TYPE_1__ guest_kernel_mm; struct kvm_mmu_memory_cache mmu_page_cache; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  KVM_MMU_CACHE_MIN_PAGES ; 
 int /*<<< orphan*/  KVM_NR_MEM_OBJS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct kvm_mmu_memory_cache*,unsigned long) ; 
 int FUNC2 (struct kvm_mmu_memory_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pte_t *FUNC3(struct kvm_vcpu *vcpu,
					unsigned long addr)
{
	struct kvm_mmu_memory_cache *memcache = &vcpu->arch.mmu_page_cache;
	pgd_t *pgdp;
	int ret;

	/* We need a minimum of cached pages ready for page table creation */
	ret = FUNC2(memcache, KVM_MMU_CACHE_MIN_PAGES,
				     KVM_NR_MEM_OBJS);
	if (ret)
		return NULL;

	if (FUNC0(vcpu))
		pgdp = vcpu->arch.guest_kernel_mm.pgd;
	else
		pgdp = vcpu->arch.guest_user_mm.pgd;

	return FUNC1(pgdp, memcache, addr);
}