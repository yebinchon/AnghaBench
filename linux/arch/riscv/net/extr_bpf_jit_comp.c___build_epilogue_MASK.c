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
typedef  int /*<<< orphan*/  u8 ;
struct rv_jit_context {int stack_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV_REG_A0 ; 
 int /*<<< orphan*/  RV_REG_A5 ; 
 int /*<<< orphan*/  RV_REG_FP ; 
 int /*<<< orphan*/  RV_REG_RA ; 
 int /*<<< orphan*/  RV_REG_S1 ; 
 int /*<<< orphan*/  RV_REG_S2 ; 
 int /*<<< orphan*/  RV_REG_S3 ; 
 int /*<<< orphan*/  RV_REG_S4 ; 
 int /*<<< orphan*/  RV_REG_S5 ; 
 int /*<<< orphan*/  RV_REG_S6 ; 
 int /*<<< orphan*/  RV_REG_SP ; 
 int /*<<< orphan*/  RV_REG_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rv_jit_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct rv_jit_context*) ; 

__attribute__((used)) static void FUNC5(u8 reg, struct rv_jit_context *ctx)
{
	int stack_adjust = ctx->stack_size, store_offset = stack_adjust - 8;

	if (FUNC4(RV_REG_RA, ctx)) {
		FUNC0(FUNC3(RV_REG_RA, store_offset, RV_REG_SP), ctx);
		store_offset -= 8;
	}
	FUNC0(FUNC3(RV_REG_FP, store_offset, RV_REG_SP), ctx);
	store_offset -= 8;
	if (FUNC4(RV_REG_S1, ctx)) {
		FUNC0(FUNC3(RV_REG_S1, store_offset, RV_REG_SP), ctx);
		store_offset -= 8;
	}
	if (FUNC4(RV_REG_S2, ctx)) {
		FUNC0(FUNC3(RV_REG_S2, store_offset, RV_REG_SP), ctx);
		store_offset -= 8;
	}
	if (FUNC4(RV_REG_S3, ctx)) {
		FUNC0(FUNC3(RV_REG_S3, store_offset, RV_REG_SP), ctx);
		store_offset -= 8;
	}
	if (FUNC4(RV_REG_S4, ctx)) {
		FUNC0(FUNC3(RV_REG_S4, store_offset, RV_REG_SP), ctx);
		store_offset -= 8;
	}
	if (FUNC4(RV_REG_S5, ctx)) {
		FUNC0(FUNC3(RV_REG_S5, store_offset, RV_REG_SP), ctx);
		store_offset -= 8;
	}
	if (FUNC4(RV_REG_S6, ctx)) {
		FUNC0(FUNC3(RV_REG_S6, store_offset, RV_REG_SP), ctx);
		store_offset -= 8;
	}

	FUNC0(FUNC1(RV_REG_SP, RV_REG_SP, stack_adjust), ctx);
	/* Set return value. */
	FUNC0(FUNC1(RV_REG_A0, RV_REG_A5, 0), ctx);
	FUNC0(FUNC2(RV_REG_ZERO, reg, 0), ctx);
}