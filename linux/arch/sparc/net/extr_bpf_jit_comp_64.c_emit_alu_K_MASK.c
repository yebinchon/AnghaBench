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
struct jit_ctx {int tmp_1_used; } ;

/* Variables and functions */
 unsigned int IMMED ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 size_t TMP_REG_1 ; 
 unsigned int* bpf2sparc ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,struct jit_ctx*) ; 
 int FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(unsigned int opcode, unsigned int dst, unsigned int imm,
		       struct jit_ctx *ctx)
{
	bool small_immed = FUNC6(imm);
	unsigned int insn = opcode;

	insn |= FUNC1(dst) | FUNC0(dst);
	if (small_immed) {
		FUNC4(insn | IMMED | FUNC3(imm), ctx);
	} else {
		unsigned int tmp = bpf2sparc[TMP_REG_1];

		ctx->tmp_1_used = true;

		FUNC5(imm, tmp, ctx);
		FUNC4(insn | FUNC2(tmp), ctx);
	}
}