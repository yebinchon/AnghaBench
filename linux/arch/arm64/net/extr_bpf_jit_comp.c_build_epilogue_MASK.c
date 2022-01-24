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
struct jit_ctx {int /*<<< orphan*/  stack_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const A64_FP ; 
 int /*<<< orphan*/  const A64_LR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  A64_SP ; 
 size_t BPF_REG_0 ; 
 size_t BPF_REG_6 ; 
 size_t BPF_REG_7 ; 
 size_t BPF_REG_8 ; 
 size_t BPF_REG_9 ; 
 size_t BPF_REG_FP ; 
 int /*<<< orphan*/ * bpf2a64 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static void FUNC6(struct jit_ctx *ctx)
{
	const u8 r0 = bpf2a64[BPF_REG_0];
	const u8 r6 = bpf2a64[BPF_REG_6];
	const u8 r7 = bpf2a64[BPF_REG_7];
	const u8 r8 = bpf2a64[BPF_REG_8];
	const u8 r9 = bpf2a64[BPF_REG_9];
	const u8 fp = bpf2a64[BPF_REG_FP];

	/* We're done with BPF stack */
	FUNC5(FUNC0(1, A64_SP, A64_SP, ctx->stack_size), ctx);

	/* Restore fs (x25) and x26 */
	FUNC5(FUNC2(fp, FUNC3(26), A64_SP), ctx);

	/* Restore callee-saved register */
	FUNC5(FUNC2(r8, r9, A64_SP), ctx);
	FUNC5(FUNC2(r6, r7, A64_SP), ctx);

	/* Restore FP/LR registers */
	FUNC5(FUNC2(A64_FP, A64_LR, A64_SP), ctx);

	/* Set return value */
	FUNC5(FUNC1(1, FUNC3(0), r0), ctx);

	FUNC5(FUNC4(A64_LR), ctx);
}