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
typedef  int u32 ;
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  ARM_PC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC5(const u8 rd, u32 val, struct jit_ctx *ctx)
{
#if __LINUX_ARM_ARCH__ < 7
	FUNC3(FUNC0(rd, ARM_PC, FUNC4(val, ctx)), ctx);
#else
	emit(ARM_MOVW(rd, val & 0xffff), ctx);
	if (val > 0xffff)
		emit(ARM_MOVT(rd, val >> 16), ctx);
#endif
}