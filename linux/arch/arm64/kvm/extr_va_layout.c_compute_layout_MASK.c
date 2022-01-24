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
typedef  int phys_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  __hyp_idmap_text_start ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 
 int high_memory ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int tag_lsb ; 
 int tag_val ; 
 int va_mask ; 
 int vabits_actual ; 

__attribute__((used)) static void FUNC7(void)
{
	phys_addr_t idmap_addr = FUNC2(__hyp_idmap_text_start);
	u64 hyp_va_msb;
	int kva_msb;

	/* Where is my RAM region? */
	hyp_va_msb  = idmap_addr & FUNC0(vabits_actual - 1);
	hyp_va_msb ^= FUNC0(vabits_actual - 1);

	kva_msb = FUNC3((u64)FUNC6(FUNC5()) ^
			(u64)(high_memory - 1));

	if (kva_msb == (vabits_actual - 1)) {
		/*
		 * No space in the address, let's compute the mask so
		 * that it covers (vabits_actual - 1) bits, and the region
		 * bit. The tag stays set to zero.
		 */
		va_mask  = FUNC0(vabits_actual - 1) - 1;
		va_mask |= hyp_va_msb;
	} else {
		/*
		 * We do have some free bits to insert a random tag.
		 * Hyp VAs are now created from kernel linear map VAs
		 * using the following formula (with V == vabits_actual):
		 *
		 *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
		 *  ---------------------------------------------------------
		 * | 0000000 | hyp_va_msb |    random tag  |  kern linear VA |
		 */
		tag_lsb = kva_msb;
		va_mask = FUNC1(tag_lsb - 1, 0);
		tag_val = FUNC4() & FUNC1(vabits_actual - 2, tag_lsb);
		tag_val |= hyp_va_msb;
		tag_val >>= tag_lsb;
	}
}