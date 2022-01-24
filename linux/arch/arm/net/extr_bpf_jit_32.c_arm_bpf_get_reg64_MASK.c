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
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_FP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_ARCH_ARMv5TE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int __LINUX_ARM_ARCH__ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static const s8 *FUNC5(const s8 *reg, const s8 *tmp,
				   struct jit_ctx *ctx)
{
	if (FUNC4(reg[1])) {
		if (__LINUX_ARM_ARCH__ >= 6 ||
		    ctx->cpu_architecture >= CPU_ARCH_ARMv5TE) {
			FUNC3(FUNC0(tmp[1], ARM_FP,
					FUNC2(reg[1])), ctx);
		} else {
			FUNC3(FUNC1(tmp[1], ARM_FP,
				       FUNC2(reg[1])), ctx);
			FUNC3(FUNC1(tmp[0], ARM_FP,
				       FUNC2(reg[0])), ctx);
		}
		reg = tmp;
	}
	return reg;
}