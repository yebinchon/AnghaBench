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
typedef  int /*<<< orphan*/  u8 ;
struct jit_ctx {scalar_t__ cpu_architecture; TYPE_2__* prog; } ;
typedef  int /*<<< orphan*/  s8 ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int /*<<< orphan*/  verifier_zext; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_FP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_ARCH_ARMv5TE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t TMP_REG_1 ; 
 int __LINUX_ARM_ARCH__ ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_hi ; 
 int /*<<< orphan*/  src_lo ; 

__attribute__((used)) static inline void FUNC8(const bool is64, const s8 dst[],
				  const s8 src[],
				  struct jit_ctx *ctx) {
	if (!is64) {
		FUNC6(dst_lo, src_lo, ctx);
		if (!ctx->prog->aux->verifier_zext)
			/* Zero out high 4 bytes */
			FUNC5(dst_hi, 0, ctx);
	} else if (__LINUX_ARM_ARCH__ < 6 &&
		   ctx->cpu_architecture < CPU_ARCH_ARMv5TE) {
		/* complete 8 byte move */
		FUNC6(dst_lo, src_lo, ctx);
		FUNC6(dst_hi, src_hi, ctx);
	} else if (FUNC7(src_lo) && FUNC7(dst_lo)) {
		const u8 *tmp = bpf2a32[TMP_REG_1];

		FUNC4(FUNC0(tmp[1], ARM_FP, FUNC3(src_lo)), ctx);
		FUNC4(FUNC2(tmp[1], ARM_FP, FUNC3(dst_lo)), ctx);
	} else if (FUNC7(src_lo)) {
		FUNC4(FUNC0(dst[1], ARM_FP, FUNC3(src_lo)), ctx);
	} else if (FUNC7(dst_lo)) {
		FUNC4(FUNC2(src[1], ARM_FP, FUNC3(dst_lo)), ctx);
	} else {
		FUNC4(FUNC1(dst[0], src[0]), ctx);
		FUNC4(FUNC1(dst[1], src[1]), ctx);
	}
}