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
struct tlbe_ref {unsigned int flags; int /*<<< orphan*/  pfn; } ;
struct kvm_book3e_206_tlb_entry {unsigned int mas2; } ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;

/* Variables and functions */
 unsigned int E500_TLB_VALID ; 
 unsigned int MAS2_ATTRIB_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvm_book3e_206_tlb_entry*) ; 

__attribute__((used)) static inline void FUNC3(struct tlbe_ref *ref,
					 struct kvm_book3e_206_tlb_entry *gtlbe,
					 kvm_pfn_t pfn, unsigned int wimg)
{
	ref->pfn = pfn;
	ref->flags = E500_TLB_VALID;

	/* Use guest supplied MAS2_G and MAS2_E */
	ref->flags |= (gtlbe->mas2 & MAS2_ATTRIB_MASK) | wimg;

	/* Mark the page accessed */
	FUNC0(pfn);

	if (FUNC2(gtlbe))
		FUNC1(pfn);
}