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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARM_LR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARM_PC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC4(u8 tgt_reg, struct jit_ctx *ctx)
{
#if __LINUX_ARM_ARCH__ < 5
	FUNC2(FUNC1(ARM_LR, ARM_PC), ctx);
	FUNC3(tgt_reg, ctx);
#else
	emit(ARM_BLX_R(tgt_reg), ctx);
#endif
}