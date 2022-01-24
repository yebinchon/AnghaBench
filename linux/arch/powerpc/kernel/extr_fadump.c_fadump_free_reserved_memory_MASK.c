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
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long start_pfn,
					unsigned long end_pfn)
{
	unsigned long pfn;
	unsigned long time_limit = jiffies + HZ;

	FUNC4("freeing reserved memory (0x%llx - 0x%llx)\n",
		FUNC0(start_pfn), FUNC0(end_pfn));

	for (pfn = start_pfn; pfn < end_pfn; pfn++) {
		FUNC2(FUNC3(pfn));

		if (FUNC5(jiffies, time_limit)) {
			FUNC1();
			time_limit = jiffies + HZ;
		}
	}
}