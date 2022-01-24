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
struct jit_ctx {scalar_t__ cpu_architecture; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_FP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_ARCH_ARMv5TE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const) ; 
 int __LINUX_ARM_ARCH__ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 scalar_t__ FUNC5 (scalar_t__ const) ; 

__attribute__((used)) static void FUNC6(const s8 *reg, const s8 *src,
			      struct jit_ctx *ctx)
{
	if (FUNC5(reg[1])) {
		if (__LINUX_ARM_ARCH__ >= 6 ||
		    ctx->cpu_architecture >= CPU_ARCH_ARMv5TE) {
			FUNC4(FUNC1(src[1], ARM_FP,
				       FUNC3(reg[1])), ctx);
		} else {
			FUNC4(FUNC2(src[1], ARM_FP,
				       FUNC3(reg[1])), ctx);
			FUNC4(FUNC2(src[0], ARM_FP,
				       FUNC3(reg[0])), ctx);
		}
	} else {
		if (reg[1] != src[1])
			FUNC4(FUNC0(reg[1], src[1]), ctx);
		if (reg[0] != src[0])
			FUNC4(FUNC0(reg[0], src[0]), ctx);
	}
}