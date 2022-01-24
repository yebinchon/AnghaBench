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
struct kvmppc_vcpu_book3s {scalar_t__ hpte_cache_count; } ;
struct kvm_vcpu {int dummy; } ;
struct hpte_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HPTEG_CACHE_NUM ; 
 int /*<<< orphan*/  hpte_cache ; 
 struct hpte_cache* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 struct kvmppc_vcpu_book3s* FUNC2 (struct kvm_vcpu*) ; 

struct hpte_cache *FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_book3s *vcpu3s = FUNC2(vcpu);
	struct hpte_cache *pte;

	if (vcpu3s->hpte_cache_count == HPTEG_CACHE_NUM)
		FUNC1(vcpu);

	pte = FUNC0(hpte_cache, GFP_KERNEL);

	return pte;
}