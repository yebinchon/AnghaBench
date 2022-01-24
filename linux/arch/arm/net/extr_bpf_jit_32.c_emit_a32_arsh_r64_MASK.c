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
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARM_COND_MI ; 
 int /*<<< orphan*/  const ARM_IP ; 
 int /*<<< orphan*/  const ARM_LR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SRTYPE_ASL ; 
 int /*<<< orphan*/  SRTYPE_ASR ; 
 int /*<<< orphan*/  SRTYPE_LSR ; 
 size_t TMP_REG_1 ; 
 size_t TMP_REG_2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,struct jit_ctx*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,struct jit_ctx*) ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  src_lo ; 

__attribute__((used)) static inline void FUNC10(const s8 dst[], const s8 src[],
				     struct jit_ctx *ctx) {
	const s8 *tmp = bpf2a32[TMP_REG_1];
	const s8 *tmp2 = bpf2a32[TMP_REG_2];
	const s8 *rd;
	s8 rt;

	/* Setup Operands */
	rt = FUNC6(src_lo, tmp2[1], ctx);
	rd = FUNC7(dst, tmp, ctx);

	/* Do the ARSH operation */
	FUNC9(FUNC3(ARM_IP, rt, 32), ctx);
	FUNC9(FUNC4(tmp2[0], rt, 32), ctx);
	FUNC9(FUNC1(ARM_LR, rd[1], SRTYPE_LSR, rt), ctx);
	FUNC9(FUNC2(ARM_LR, ARM_LR, rd[0], SRTYPE_ASL, ARM_IP), ctx);
	FUNC5(ARM_COND_MI, FUNC0(0), ctx);
	FUNC9(FUNC2(ARM_LR, ARM_LR, rd[0], SRTYPE_ASR, tmp2[0]), ctx);
	FUNC9(FUNC1(ARM_IP, rd[0], SRTYPE_ASR, rt), ctx);

	FUNC8(dst_lo, ARM_LR, ctx);
	FUNC8(dst_hi, ARM_IP, ctx);
}