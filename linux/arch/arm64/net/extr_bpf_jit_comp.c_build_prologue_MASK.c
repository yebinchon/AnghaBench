#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct jit_ctx {int idx; int /*<<< orphan*/  stack_size; struct bpf_prog* prog; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int /*<<< orphan*/  stack_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  const A64_FP ; 
 int /*<<< orphan*/  const A64_LR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  A64_SP ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t BPF_REG_6 ; 
 size_t BPF_REG_7 ; 
 size_t BPF_REG_8 ; 
 size_t BPF_REG_9 ; 
 size_t BPF_REG_FP ; 
 int PROLOGUE_OFFSET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t TCALL_CNT ; 
 int /*<<< orphan*/ * bpf2a64 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static int FUNC7(struct jit_ctx *ctx, bool ebpf_from_cbpf)
{
	const struct bpf_prog *prog = ctx->prog;
	const u8 r6 = bpf2a64[BPF_REG_6];
	const u8 r7 = bpf2a64[BPF_REG_7];
	const u8 r8 = bpf2a64[BPF_REG_8];
	const u8 r9 = bpf2a64[BPF_REG_9];
	const u8 fp = bpf2a64[BPF_REG_FP];
	const u8 tcc = bpf2a64[TCALL_CNT];
	const int idx0 = ctx->idx;
	int cur_offset;

	/*
	 * BPF prog stack layout
	 *
	 *                         high
	 * original A64_SP =>   0:+-----+ BPF prologue
	 *                        |FP/LR|
	 * current A64_FP =>  -16:+-----+
	 *                        | ... | callee saved registers
	 * BPF fp register => -64:+-----+ <= (BPF_FP)
	 *                        |     |
	 *                        | ... | BPF prog stack
	 *                        |     |
	 *                        +-----+ <= (BPF_FP - prog->aux->stack_depth)
	 *                        |RSVD | padding
	 * current A64_SP =>      +-----+ <= (BPF_FP - ctx->stack_size)
	 *                        |     |
	 *                        | ... | Function call stack
	 *                        |     |
	 *                        +-----+
	 *                          low
	 *
	 */

	/* Save FP and LR registers to stay align with ARM64 AAPCS */
	FUNC5(FUNC2(A64_FP, A64_LR, A64_SP), ctx);
	FUNC5(FUNC0(1, A64_FP, A64_SP), ctx);

	/* Save callee-saved registers */
	FUNC5(FUNC2(r6, r7, A64_SP), ctx);
	FUNC5(FUNC2(r8, r9, A64_SP), ctx);
	FUNC5(FUNC2(fp, tcc, A64_SP), ctx);

	/* Set up BPF prog stack base register */
	FUNC5(FUNC0(1, fp, A64_SP), ctx);

	if (!ebpf_from_cbpf) {
		/* Initialize tail_call_cnt */
		FUNC5(FUNC1(1, tcc, 0, 0), ctx);

		cur_offset = ctx->idx - idx0;
		if (cur_offset != PROLOGUE_OFFSET) {
			FUNC6("PROLOGUE_OFFSET = %d, expected %d!\n",
				    cur_offset, PROLOGUE_OFFSET);
			return -1;
		}
	}

	ctx->stack_size = FUNC4(prog->aux->stack_depth);

	/* Set up function call stack */
	FUNC5(FUNC3(1, A64_SP, A64_SP, ctx->stack_size), ctx);
	return 0;
}