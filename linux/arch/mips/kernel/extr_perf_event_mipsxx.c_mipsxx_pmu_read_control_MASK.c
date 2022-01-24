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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 unsigned int FUNC5 () ; 

__attribute__((used)) static unsigned int FUNC6(unsigned int idx)
{
	idx = FUNC1(idx);

	switch (idx) {
	case 0:
		return FUNC2();
	case 1:
		return FUNC3();
	case 2:
		return FUNC4();
	case 3:
		return FUNC5();
	default:
		FUNC0(1, "Invalid performance counter number (%d)\n", idx);
		return 0;
	}
}