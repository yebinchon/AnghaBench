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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  HIT ; 
 int /*<<< orphan*/  HITM ; 
 int /*<<< orphan*/  L1 ; 
 int /*<<< orphan*/  L2 ; 
 int /*<<< orphan*/  L3 ; 
 int /*<<< orphan*/  LOC_RAM ; 
 int /*<<< orphan*/  LVL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PERF_MEM_NA ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REM_CCE1 ; 
 int /*<<< orphan*/  REM_CCE2 ; 
 int /*<<< orphan*/  REM_RAM1 ; 
 int /*<<< orphan*/  REM_RAM2 ; 
 int /*<<< orphan*/  SNOOP ; 

__attribute__((used)) static inline u64 FUNC3(u64 idx, u32 sub_idx)
{
	u64 ret = PERF_MEM_NA;

	switch(idx) {
	case 0:
		/* Nothing to do */
		break;
	case 1:
		ret = FUNC1(LVL, L1);
		break;
	case 2:
		ret = FUNC1(LVL, L2);
		break;
	case 3:
		ret = FUNC1(LVL, L3);
		break;
	case 4:
		if (sub_idx <= 1)
			ret = FUNC1(LVL, LOC_RAM);
		else if (sub_idx > 1 && sub_idx <= 2)
			ret = FUNC1(LVL, REM_RAM1);
		else
			ret = FUNC1(LVL, REM_RAM2);
		ret |= FUNC0(SNOOP, HIT);
		break;
	case 5:
		ret = FUNC1(LVL, REM_CCE1);
		if ((sub_idx == 0) || (sub_idx == 2) || (sub_idx == 4))
			ret |= FUNC0(SNOOP, HIT);
		else if ((sub_idx == 1) || (sub_idx == 3) || (sub_idx == 5))
			ret |= FUNC0(SNOOP, HITM);
		break;
	case 6:
		ret = FUNC1(LVL, REM_CCE2);
		if ((sub_idx == 0) || (sub_idx == 2))
			ret |= FUNC0(SNOOP, HIT);
		else if ((sub_idx == 1) || (sub_idx == 3))
			ret |= FUNC0(SNOOP, HITM);
		break;
	case 7:
		ret = FUNC2(LVL, L1);
		break;
	}

	return ret;
}