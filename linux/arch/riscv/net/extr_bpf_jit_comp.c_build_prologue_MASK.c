#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rv_jit_context {int stack_size; TYPE_2__* prog; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int stack_depth; } ;

/* Variables and functions */
 int MAX_TAIL_CALL_CNT ; 
 int /*<<< orphan*/  RV_REG_FP ; 
 int /*<<< orphan*/  RV_REG_RA ; 
 int /*<<< orphan*/  RV_REG_S1 ; 
 int /*<<< orphan*/  RV_REG_S2 ; 
 int /*<<< orphan*/  RV_REG_S3 ; 
 int /*<<< orphan*/  RV_REG_S4 ; 
 int /*<<< orphan*/  RV_REG_S5 ; 
 int /*<<< orphan*/  RV_REG_S6 ; 
 int /*<<< orphan*/  RV_REG_SP ; 
 int /*<<< orphan*/  RV_REG_TCC ; 
 int /*<<< orphan*/  RV_REG_TCC_SAVED ; 
 int /*<<< orphan*/  RV_REG_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rv_jit_context*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rv_jit_context*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct rv_jit_context*) ; 
 scalar_t__ FUNC6 (struct rv_jit_context*) ; 

__attribute__((used)) static void FUNC7(struct rv_jit_context *ctx)
{
	int stack_adjust = 0, store_offset, bpf_stack_adjust;

	if (FUNC5(RV_REG_RA, ctx))
		stack_adjust += 8;
	stack_adjust += 8; /* RV_REG_FP */
	if (FUNC5(RV_REG_S1, ctx))
		stack_adjust += 8;
	if (FUNC5(RV_REG_S2, ctx))
		stack_adjust += 8;
	if (FUNC5(RV_REG_S3, ctx))
		stack_adjust += 8;
	if (FUNC5(RV_REG_S4, ctx))
		stack_adjust += 8;
	if (FUNC5(RV_REG_S5, ctx))
		stack_adjust += 8;
	if (FUNC5(RV_REG_S6, ctx))
		stack_adjust += 8;

	stack_adjust = FUNC1(stack_adjust, 16);
	bpf_stack_adjust = FUNC1(ctx->prog->aux->stack_depth, 16);
	stack_adjust += bpf_stack_adjust;

	store_offset = stack_adjust - 8;

	/* First instruction is always setting the tail-call-counter
	 * (TCC) register. This instruction is skipped for tail calls.
	 */
	FUNC0(FUNC2(RV_REG_TCC, RV_REG_ZERO, MAX_TAIL_CALL_CNT), ctx);

	FUNC0(FUNC2(RV_REG_SP, RV_REG_SP, -stack_adjust), ctx);

	if (FUNC5(RV_REG_RA, ctx)) {
		FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_RA), ctx);
		store_offset -= 8;
	}
	FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_FP), ctx);
	store_offset -= 8;
	if (FUNC5(RV_REG_S1, ctx)) {
		FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_S1), ctx);
		store_offset -= 8;
	}
	if (FUNC5(RV_REG_S2, ctx)) {
		FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_S2), ctx);
		store_offset -= 8;
	}
	if (FUNC5(RV_REG_S3, ctx)) {
		FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_S3), ctx);
		store_offset -= 8;
	}
	if (FUNC5(RV_REG_S4, ctx)) {
		FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_S4), ctx);
		store_offset -= 8;
	}
	if (FUNC5(RV_REG_S5, ctx)) {
		FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_S5), ctx);
		store_offset -= 8;
	}
	if (FUNC5(RV_REG_S6, ctx)) {
		FUNC0(FUNC3(RV_REG_SP, store_offset, RV_REG_S6), ctx);
		store_offset -= 8;
	}

	FUNC0(FUNC2(RV_REG_FP, RV_REG_SP, stack_adjust), ctx);

	if (bpf_stack_adjust)
		FUNC0(FUNC2(RV_REG_S5, RV_REG_SP, bpf_stack_adjust), ctx);

	/* Program contains calls and tail calls, so RV_REG_TCC need
	 * to be saved across calls.
	 */
	if (FUNC6(ctx) && FUNC4(ctx))
		FUNC0(FUNC2(RV_REG_TCC_SAVED, RV_REG_TCC, 0), ctx);

	ctx->stack_size = stack_adjust;
}