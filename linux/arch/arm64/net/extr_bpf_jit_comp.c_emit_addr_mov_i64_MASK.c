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
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int const,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC3(const int reg, const u64 val,
				     struct jit_ctx *ctx)
{
	u64 tmp = val;
	int shift = 0;

	FUNC2(FUNC1(1, reg, ~tmp & 0xffff, shift), ctx);
	while (shift < 32) {
		tmp >>= 16;
		shift += 16;
		FUNC2(FUNC0(1, reg, tmp & 0xffff, shift), ctx);
	}
}