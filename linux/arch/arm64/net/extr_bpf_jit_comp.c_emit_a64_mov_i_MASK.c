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
typedef  int u16 ;
struct jit_ctx {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int const,int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC4(const int is64, const int reg,
				  const s32 val, struct jit_ctx *ctx)
{
	u16 hi = val >> 16;
	u16 lo = val & 0xffff;

	if (hi & 0x8000) {
		if (hi == 0xffff) {
			FUNC3(FUNC1(is64, reg, (u16)~lo, 0), ctx);
		} else {
			FUNC3(FUNC1(is64, reg, (u16)~hi, 16), ctx);
			if (lo != 0xffff)
				FUNC3(FUNC0(is64, reg, lo, 0), ctx);
		}
	} else {
		FUNC3(FUNC2(is64, reg, lo, 0), ctx);
		if (hi)
			FUNC3(FUNC0(is64, reg, hi, 16), ctx);
	}
}