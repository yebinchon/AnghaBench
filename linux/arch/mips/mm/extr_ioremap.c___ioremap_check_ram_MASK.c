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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static int FUNC3(unsigned long start_pfn, unsigned long nr_pages,
			       void *arg)
{
	unsigned long i;

	for (i = 0; i < nr_pages; i++) {
		if (FUNC2(start_pfn + i) &&
		    !FUNC0(FUNC1(start_pfn + i)))
			return 1;
	}

	return 0;
}