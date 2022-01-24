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
typedef  int u64 ;

/* Variables and functions */
 int PT_WRITABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int shadow_acc_track_mask ; 
 int shadow_acc_track_saved_bits_mask ; 
 int shadow_acc_track_saved_bits_shift ; 
 int shadow_accessed_mask ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u64 FUNC4(u64 spte)
{
	if (FUNC2(spte))
		return spte & ~shadow_accessed_mask;

	if (FUNC1(spte))
		return spte;

	/*
	 * Making an Access Tracking PTE will result in removal of write access
	 * from the PTE. So, verify that we will be able to restore the write
	 * access in the fast page fault path later on.
	 */
	FUNC0((spte & PT_WRITABLE_MASK) &&
		  !FUNC3(spte),
		  "kvm: Writable SPTE is not locklessly dirty-trackable\n");

	FUNC0(spte & (shadow_acc_track_saved_bits_mask <<
			  shadow_acc_track_saved_bits_shift),
		  "kvm: Access Tracking saved bit locations are not zero\n");

	spte |= (spte & shadow_acc_track_saved_bits_mask) <<
		shadow_acc_track_saved_bits_shift;
	spte &= ~shadow_acc_track_mask;

	return spte;
}