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
struct kvmppc_vcpu_e500 {int num_shared_tlb_pages; int /*<<< orphan*/ * gtlb_arch; int /*<<< orphan*/ * shared_tlb_pages; int /*<<< orphan*/ ** gtlb_priv; int /*<<< orphan*/ * g2h_tlb1_map; int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static void FUNC6(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	int i;

	FUNC1(&vcpu_e500->vcpu);
	FUNC0(vcpu_e500->g2h_tlb1_map);
	FUNC0(vcpu_e500->gtlb_priv[0]);
	FUNC0(vcpu_e500->gtlb_priv[1]);

	if (vcpu_e500->shared_tlb_pages) {
		FUNC5((void *)(FUNC3((uintptr_t)vcpu_e500->gtlb_arch,
					  PAGE_SIZE)));

		for (i = 0; i < vcpu_e500->num_shared_tlb_pages; i++) {
			FUNC4(vcpu_e500->shared_tlb_pages[i]);
			FUNC2(vcpu_e500->shared_tlb_pages[i]);
		}

		vcpu_e500->num_shared_tlb_pages = 0;

		FUNC0(vcpu_e500->shared_tlb_pages);
		vcpu_e500->shared_tlb_pages = NULL;
	} else {
		FUNC0(vcpu_e500->gtlb_arch);
	}

	vcpu_e500->gtlb_arch = NULL;
}