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
struct kvm_memory_slot {scalar_t__ base_gfn; } ;
struct kvm {int dummy; } ;
typedef  scalar_t__ gfn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,scalar_t__,scalar_t__) ; 

void FUNC3(struct kvm *kvm,
		struct kvm_memory_slot *slot,
		gfn_t gfn_offset, unsigned long mask)
{
	gfn_t base_gfn = slot->base_gfn + gfn_offset;
	gfn_t start = base_gfn +  FUNC0(mask);
	gfn_t end = base_gfn + FUNC1(mask);

	FUNC2(kvm, start, end);
}