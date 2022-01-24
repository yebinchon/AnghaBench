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
typedef  int u32 ;
struct jit_ctx {int tmp_1_used; } ;

/* Variables and functions */
 unsigned int G0 ; 
 int IMMED ; 
 int OR ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  SLLX ; 
 int /*<<< orphan*/  SRLX ; 
 size_t TMP_REG_1 ; 
 int XOR ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*,int*,int*) ; 
 unsigned int* bpf2sparc ; 
 scalar_t__ FUNC6 (int,int) ; 
 void* FUNC7 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,int,struct jit_ctx*) ; 
 void FUNC10 (int,unsigned int,struct jit_ctx*) ; 
 void FUNC11 (int,unsigned int,struct jit_ctx*) ; 
 scalar_t__ FUNC12 (unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,unsigned int,int,struct jit_ctx*) ; 

__attribute__((used)) static void FUNC15(u64 K, unsigned int dest, struct jit_ctx *ctx)
{
	int all_bits_between_are_set, lowest_bit_set, highest_bit_set;
	unsigned int tmp = bpf2sparc[TMP_REG_1];
	u32 low_bits = (K & 0xffffffff);
	u32 high_bits = (K >> 32);

	/* These two tests also take care of all of the one
	 * instruction cases.
	 */
	if (high_bits == 0xffffffff && (low_bits & 0x80000000))
		return FUNC11(K, dest, ctx);
	if (high_bits == 0x00000000)
		return FUNC10(K, dest, ctx);

	FUNC5(high_bits, low_bits, &highest_bit_set,
			       &lowest_bit_set, &all_bits_between_are_set);

	/* 1) mov	-1, %reg
	 *    sllx	%reg, shift, %reg
	 * 2) mov	-1, %reg
	 *    srlx	%reg, shift, %reg
	 * 3) mov	some_small_const, %reg
	 *    sllx	%reg, shift, %reg
	 */
	if (((highest_bit_set == 63 || lowest_bit_set == 0) &&
	     all_bits_between_are_set != 0) ||
	    ((highest_bit_set - lowest_bit_set) < 12)) {
		int shift = lowest_bit_set;
		long the_const = -1;

		if ((highest_bit_set != 63 && lowest_bit_set != 0) ||
		    all_bits_between_are_set == 0) {
			the_const =
				FUNC7(high_bits, low_bits,
							 lowest_bit_set, 0);
		} else if (lowest_bit_set == 0)
			shift = -(63 - highest_bit_set);

		FUNC8(OR | IMMED | FUNC1(G0) | FUNC3(the_const) | FUNC0(dest), ctx);
		if (shift > 0)
			FUNC9(SLLX, dest, shift, ctx);
		else if (shift < 0)
			FUNC9(SRLX, dest, -shift, ctx);

		return;
	}

	/* Now a range of 22 or less bits set somewhere.
	 * 1) sethi	%hi(focus_bits), %reg
	 *    sllx	%reg, shift, %reg
	 * 2) sethi	%hi(focus_bits), %reg
	 *    srlx	%reg, shift, %reg
	 */
	if ((highest_bit_set - lowest_bit_set) < 21) {
		unsigned long focus_bits =
			FUNC7(high_bits, low_bits,
						 lowest_bit_set, 10);

		FUNC8(FUNC4(focus_bits, dest), ctx);

		/* If lowest_bit_set == 10 then a sethi alone could
		 * have done it.
		 */
		if (lowest_bit_set < 10)
			FUNC9(SRLX, dest, 10 - lowest_bit_set, ctx);
		else if (lowest_bit_set > 10)
			FUNC9(SLLX, dest, lowest_bit_set - 10, ctx);
		return;
	}

	/* Ok, now 3 instruction sequences.  */
	if (low_bits == 0) {
		FUNC10(high_bits, dest, ctx);
		FUNC9(SLLX, dest, 32, ctx);
		return;
	}

	/* We may be able to do something quick
	 * when the constant is negated, so try that.
	 */
	if (FUNC6((~high_bits) & 0xffffffff,
			      (~low_bits) & 0xfffffc00)) {
		/* NOTE: The trailing bits get XOR'd so we need the
		 * non-negated bits, not the negated ones.
		 */
		unsigned long trailing_bits = low_bits & 0x3ff;

		if ((((~high_bits) & 0xffffffff) == 0 &&
		     ((~low_bits) & 0x80000000) == 0) ||
		    (((~high_bits) & 0xffffffff) == 0xffffffff &&
		     ((~low_bits) & 0x80000000) != 0)) {
			unsigned long fast_int = (~low_bits & 0xffffffff);

			if ((FUNC12(fast_int) &&
			     (~high_bits & 0xffffffff) == 0)) {
				FUNC8(FUNC4(fast_int, dest), ctx);
			} else if (FUNC13(fast_int)) {
				FUNC8(OR | IMMED | FUNC1(G0) | FUNC3(fast_int) | FUNC0(dest), ctx);
			} else {
				FUNC15(fast_int, dest, ctx);
			}
		} else {
			u64 n = ((~low_bits) & 0xfffffc00) |
				(((unsigned long)((~high_bits) & 0xffffffff))<<32);
			FUNC15(n, dest, ctx);
		}

		low_bits = -0x400 | trailing_bits;

		FUNC8(XOR | IMMED | FUNC1(dest) | FUNC3(low_bits) | FUNC0(dest), ctx);
		return;
	}

	/* 1) sethi	%hi(xxx), %reg
	 *    or	%reg, %lo(xxx), %reg
	 *    sllx	%reg, yyy, %reg
	 */
	if ((highest_bit_set - lowest_bit_set) < 32) {
		unsigned long focus_bits =
			FUNC7(high_bits, low_bits,
						 lowest_bit_set, 0);

		/* So what we know is that the set bits straddle the
		 * middle of the 64-bit word.
		 */
		FUNC14(focus_bits, 0, dest,
					      lowest_bit_set, ctx);
		return;
	}

	/* 1) sethi	%hi(high_bits), %reg
	 *    or	%reg, %lo(high_bits), %reg
	 *    sllx	%reg, 32, %reg
	 *    or	%reg, low_bits, %reg
	 */
	if (FUNC13(low_bits) && ((int)low_bits > 0)) {
		FUNC14(high_bits, low_bits,
					      dest, 32, ctx);
		return;
	}

	/* Oh well, we tried... Do a full 64-bit decomposition.  */
	ctx->tmp_1_used = true;

	FUNC10(high_bits, tmp, ctx);
	FUNC10(low_bits, dest, ctx);
	FUNC9(SLLX, tmp, 32, ctx);
	FUNC8(OR | FUNC1(dest) | FUNC2(tmp) | FUNC0(dest), ctx);
}