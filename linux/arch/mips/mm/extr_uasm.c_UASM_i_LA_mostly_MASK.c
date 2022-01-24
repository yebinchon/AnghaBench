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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 scalar_t__ FUNC5 (long) ; 
 scalar_t__ FUNC6 (long) ; 
 scalar_t__ FUNC7 (long) ; 

void FUNC8(u32 **buf, unsigned int rs, long addr)
{
	if (!FUNC4(addr)) {
		FUNC3(buf, rs, FUNC7(addr));
		if (FUNC6(addr))
			FUNC0(buf, rs, rs, FUNC6(addr));
		if (FUNC5(addr)) {
			FUNC1(buf, rs, rs, 16);
			FUNC0(buf, rs, rs,
					FUNC5(addr));
			FUNC1(buf, rs, rs, 16);
		} else
			FUNC2(buf, rs, rs, 0);
	} else
		FUNC3(buf, rs, FUNC5(addr));
}