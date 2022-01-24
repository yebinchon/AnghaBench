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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int,int,int const) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(u8 **pprog, u32 dst_reg,
			   const u32 imm32_hi, const u32 imm32_lo)
{
	u8 *prog = *pprog;
	int cnt = 0;

	if (FUNC5(((u64)imm32_hi << 32) | (u32)imm32_lo)) {
		/*
		 * For emitting plain u32, where sign bit must not be
		 * propagated LLVM tends to load imm64 over mov32
		 * directly, so save couple of bytes by just doing
		 * 'mov %eax, imm32' instead.
		 */
		FUNC4(&prog, false, dst_reg, imm32_lo);
	} else {
		/* movabsq %rax, imm64 */
		FUNC1(FUNC2(0x48, dst_reg), FUNC3(0xB8, dst_reg));
		FUNC0(imm32_lo, 4);
		FUNC0(imm32_hi, 4);
	}

	*pprog = prog;
}