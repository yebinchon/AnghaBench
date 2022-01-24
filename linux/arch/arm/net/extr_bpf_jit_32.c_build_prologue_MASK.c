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
struct jit_ctx {int stack_size; } ;
typedef  int s8 ;

/* Variables and functions */
 int const ARM_FP ; 
 int ARM_IP ; 
 int /*<<< orphan*/  FUNC0 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const) ; 
 int ARM_PC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ARM_SP ; 
 int /*<<< orphan*/  FUNC3 (int const,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int const,int,int) ; 
 size_t BPF_REG_0 ; 
 size_t BPF_REG_1 ; 
 size_t BPF_REG_6 ; 
 size_t BPF_REG_FP ; 
 int CALLEE_PUSH_MASK ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 
 int SCRATCH_SIZE ; 
 int /*<<< orphan*/  STACK_SIZE ; 
 size_t TCALL_CNT ; 
 int** bpf2a32 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int const,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int const,int,struct jit_ctx*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct jit_ctx *ctx)
{
	const s8 r0 = bpf2a32[BPF_REG_0][1];
	const s8 r2 = bpf2a32[BPF_REG_1][1];
	const s8 r3 = bpf2a32[BPF_REG_1][0];
	const s8 r4 = bpf2a32[BPF_REG_6][1];
	const s8 fplo = bpf2a32[BPF_REG_FP][1];
	const s8 fphi = bpf2a32[BPF_REG_FP][0];
	const s8 *tcc = bpf2a32[TCALL_CNT];

	/* Save callee saved registers. */
#ifdef CONFIG_FRAME_POINTER
	u16 reg_set = CALLEE_PUSH_MASK | 1 << ARM_IP | 1 << ARM_PC;
	emit(ARM_MOV_R(ARM_IP, ARM_SP), ctx);
	emit(ARM_PUSH(reg_set), ctx);
	emit(ARM_SUB_I(ARM_FP, ARM_IP, 4), ctx);
#else
	FUNC6(FUNC2(CALLEE_PUSH_MASK), ctx);
	FUNC6(FUNC1(ARM_FP, ARM_SP), ctx);
#endif
	/* Save frame pointer for later */
	FUNC6(FUNC4(ARM_IP, ARM_SP, SCRATCH_SIZE), ctx);

	ctx->stack_size = FUNC9(STACK_SIZE);

	/* Set up function call stack */
	FUNC6(FUNC4(ARM_SP, ARM_SP, ctx->stack_size), ctx);

	/* Set up BPF prog stack base register */
	FUNC8(fplo, ARM_IP, ctx);
	FUNC7(fphi, 0, ctx);

	/* mov r4, 0 */
	FUNC6(FUNC0(r4, 0), ctx);

	/* Move BPF_CTX to BPF_R1 */
	FUNC6(FUNC1(r3, r4), ctx);
	FUNC6(FUNC1(r2, r0), ctx);
	/* Initialize Tail Count */
	FUNC6(FUNC3(r4, ARM_FP, FUNC5(tcc[0])), ctx);
	FUNC6(FUNC3(r4, ARM_FP, FUNC5(tcc[1])), ctx);
	/* end of prologue */
}