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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long* dtlb_entries ; 
 int /*<<< orphan*/  dtlb_entry ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 

void FUNC5(void)
{
	unsigned long long entry;
	unsigned long flags;

	FUNC0(!dtlb_entry);

	FUNC2(flags);
	entry = dtlb_entries[dtlb_entry--];

	FUNC4(entry);
	FUNC3(entry);

	FUNC1(flags);
}