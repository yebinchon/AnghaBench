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
typedef  int u32 ;
struct jit_ctx {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int IMMED ; 
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int XOR ; 
 int /*<<< orphan*/  FUNC5 (int,struct jit_ctx*) ; 

__attribute__((used)) static void FUNC6(s32 K, u32 reg, struct jit_ctx *ctx)
{
	if (K >= 0) {
		FUNC5(FUNC4(K, reg), ctx);
		FUNC5(FUNC0(K, reg), ctx);
	} else {
		u32 hbits = ~(u32) K;
		u32 lbits = -0x400 | (u32) K;

		FUNC5(FUNC4(hbits, reg), ctx);
		FUNC5(XOR | IMMED | FUNC2(reg) | FUNC3(lbits) | FUNC1(reg), ctx);
	}
}