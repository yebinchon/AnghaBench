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
 int /*<<< orphan*/  PAGE_SIZE ; 
 long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static long
FUNC4(unsigned long start, unsigned long end)
{
	long ret;

	do {
		unsigned long chunk = FUNC3(PAGE_SIZE, end - start);

		if (FUNC2(current))
			return 0;

		ret = FUNC0(start, start + chunk);
		if (ret)
			return ret;

		FUNC1();
		start += chunk;
	} while (start < end);

	return 0;
}