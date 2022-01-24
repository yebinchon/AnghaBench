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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static u64 FUNC6(unsigned int idx)
{
	idx = FUNC1(idx);

	switch (idx) {
	case 0:
		/*
		 * The counters are unsigned, we must cast to truncate
		 * off the high bits.
		 */
		return (u32)FUNC2();
	case 1:
		return (u32)FUNC3();
	case 2:
		return (u32)FUNC4();
	case 3:
		return (u32)FUNC5();
	default:
		FUNC0(1, "Invalid performance counter number (%d)\n", idx);
		return 0;
	}
}