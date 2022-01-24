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
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int IMMED ; 
 int OR ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  SLLX ; 
 int /*<<< orphan*/  FUNC3 (int,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned int,struct jit_ctx*) ; 

__attribute__((used)) static void FUNC6(unsigned long high_bits,
					  unsigned long low_imm,
					  unsigned int dest,
					  int shift_count, struct jit_ctx *ctx)
{
	FUNC5(high_bits, dest, ctx);

	/* Now shift it up into place.  */
	FUNC4(SLLX, dest, shift_count, ctx);

	/* If there is a low immediate part piece, finish up by
	 * putting that in as well.
	 */
	if (low_imm != 0)
		FUNC3(OR | IMMED | FUNC1(dest) | FUNC2(low_imm) | FUNC0(dest), ctx);
}