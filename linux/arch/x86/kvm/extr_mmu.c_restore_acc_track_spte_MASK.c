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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int shadow_acc_track_mask ; 
 int shadow_acc_track_saved_bits_mask ; 
 int shadow_acc_track_saved_bits_shift ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u64 FUNC3(u64 spte)
{
	u64 new_spte = spte;
	u64 saved_bits = (spte >> shadow_acc_track_saved_bits_shift)
			 & shadow_acc_track_saved_bits_mask;

	FUNC0(FUNC2(spte));
	FUNC0(!FUNC1(spte));

	new_spte &= ~shadow_acc_track_mask;
	new_spte &= ~(shadow_acc_track_saved_bits_mask <<
		      shadow_acc_track_saved_bits_shift);
	new_spte |= saved_bits;

	return new_spte;
}