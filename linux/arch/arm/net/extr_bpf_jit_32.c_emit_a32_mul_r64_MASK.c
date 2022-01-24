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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const ARM_IP ; 
 int /*<<< orphan*/  const ARM_LR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 size_t TMP_REG_1 ; 
 size_t TMP_REG_2 ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,struct jit_ctx*) ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC6(const s8 dst[], const s8 src[],
				    struct jit_ctx *ctx) {
	const s8 *tmp = bpf2a32[TMP_REG_1];
	const s8 *tmp2 = bpf2a32[TMP_REG_2];
	const s8 *rd, *rt;

	/* Setup operands for multiplication */
	rd = FUNC3(dst, tmp, ctx);
	rt = FUNC3(src, tmp2, ctx);

	/* Do Multiplication */
	FUNC5(FUNC1(ARM_IP, rd[1], rt[0]), ctx);
	FUNC5(FUNC1(ARM_LR, rd[0], rt[1]), ctx);
	FUNC5(FUNC0(ARM_LR, ARM_IP, ARM_LR), ctx);

	FUNC5(FUNC2(ARM_IP, rd[0], rd[1], rt[1]), ctx);
	FUNC5(FUNC0(rd[0], ARM_LR, rd[0]), ctx);

	FUNC4(dst_lo, ARM_IP, ctx);
	FUNC4(dst_hi, rd[0], ctx);
}