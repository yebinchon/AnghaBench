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
struct ppc64_tlb_batch {int /*<<< orphan*/  ssize; int /*<<< orphan*/  psize; int /*<<< orphan*/ * pte; int /*<<< orphan*/ * vpn; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_hash_range ) (unsigned long,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ mmu_hash_ops ; 
 int /*<<< orphan*/  ppc64_tlb_batch ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 struct ppc64_tlb_batch* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(unsigned long number, int local)
{
	if (mmu_hash_ops.flush_hash_range)
		mmu_hash_ops.flush_hash_range(number, local);
	else {
		int i;
		struct ppc64_tlb_batch *batch =
			FUNC2(&ppc64_tlb_batch);

		for (i = 0; i < number; i++)
			FUNC0(batch->vpn[i], batch->pte[i],
					batch->psize, batch->ssize, local);
	}
}