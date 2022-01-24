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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,scalar_t__ const) ; 
 int FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int FUNC6 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(u8 **pprog, bool sign_propagate,
			   u32 dst_reg, const u32 imm32)
{
	u8 *prog = *pprog;
	u8 b1, b2, b3;
	int cnt = 0;

	/*
	 * Optimization: if imm32 is positive, use 'mov %eax, imm32'
	 * (which zero-extends imm32) to save 2 bytes.
	 */
	if (sign_propagate && (s32)imm32 < 0) {
		/* 'mov %rax, imm32' sign extends imm32 */
		b1 = FUNC4(0x48, dst_reg);
		b2 = 0xC7;
		b3 = 0xC0;
		FUNC3(b1, b2, FUNC5(b3, dst_reg), imm32);
		goto done;
	}

	/*
	 * Optimization: if imm32 is zero, use 'xor %eax, %eax'
	 * to save 3 bytes.
	 */
	if (imm32 == 0) {
		if (FUNC8(dst_reg))
			FUNC0(FUNC6(0x40, dst_reg, dst_reg));
		b2 = 0x31; /* xor */
		b3 = 0xC0;
		FUNC2(b2, FUNC7(b3, dst_reg, dst_reg));
		goto done;
	}

	/* mov %eax, imm32 */
	if (FUNC8(dst_reg))
		FUNC0(FUNC4(0x40, dst_reg));
	FUNC1(FUNC5(0xB8, dst_reg), imm32);
done:
	*pprog = prog;
}