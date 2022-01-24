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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(u8 **pprog, bool is64, u32 dst_reg, u32 src_reg)
{
	u8 *prog = *pprog;
	int cnt = 0;

	if (is64) {
		/* mov dst, src */
		FUNC2(dst_reg, src_reg);
	} else {
		/* mov32 dst, src */
		if (FUNC5(dst_reg) || FUNC5(src_reg))
			FUNC0(FUNC3(0x40, dst_reg, src_reg));
		FUNC1(0x89, FUNC4(0xC0, dst_reg, src_reg));
	}

	*pprog = prog;
}