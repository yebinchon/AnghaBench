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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  G0 ; 
 int IMMED ; 
 int OR ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,struct jit_ctx*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(s32 K, unsigned int dest, struct jit_ctx *ctx)
{
	if (FUNC5(K)) {
		/* or %g0, K, DEST */
		FUNC3(OR | IMMED | FUNC1(G0) | FUNC2(K) | FUNC0(dest), ctx);
	} else {
		FUNC4(K, dest, ctx);
	}
}