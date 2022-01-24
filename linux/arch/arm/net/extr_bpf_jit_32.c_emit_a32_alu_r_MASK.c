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
struct jit_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 size_t TMP_REG_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/  const,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC3(const s8 dst, const s8 src,
				  struct jit_ctx *ctx, const bool is64,
				  const bool hi, const u8 op) {
	const s8 *tmp = bpf2a32[TMP_REG_1];
	s8 rn, rd;

	rn = FUNC0(src, tmp[1], ctx);
	rd = FUNC0(dst, tmp[0], ctx);
	/* ALU operation */
	FUNC2(rd, rn, is64, hi, op, ctx);
	FUNC1(dst, rd, ctx);
}