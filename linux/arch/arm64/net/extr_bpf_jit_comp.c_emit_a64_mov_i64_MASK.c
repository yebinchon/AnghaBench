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
typedef  int /*<<< orphan*/  u32 ;
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int const,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int const,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 void FUNC4 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static inline void FUNC9(const int reg, const u64 val,
				    struct jit_ctx *ctx)
{
	u64 nrm_tmp = val, rev_tmp = ~val;
	bool inverse;
	int shift;

	if (!(nrm_tmp >> 32))
		return FUNC4(0, reg, (u32)val, ctx);

	inverse = FUNC6(nrm_tmp, true) < FUNC6(nrm_tmp, false);
	shift = FUNC7(FUNC8((inverse ? (FUNC5(rev_tmp) - 1) :
					  (FUNC5(nrm_tmp) - 1)), 16), 0);
	if (inverse)
		FUNC3(FUNC1(1, reg, (rev_tmp >> shift) & 0xffff, shift), ctx);
	else
		FUNC3(FUNC2(1, reg, (nrm_tmp >> shift) & 0xffff, shift), ctx);
	shift -= 16;
	while (shift >= 0) {
		if (((nrm_tmp >> shift) & 0xffff) != (inverse ? 0xffff : 0x0000))
			FUNC3(FUNC0(1, reg, (nrm_tmp >> shift) & 0xffff, shift), ctx);
		shift -= 16;
	}
}