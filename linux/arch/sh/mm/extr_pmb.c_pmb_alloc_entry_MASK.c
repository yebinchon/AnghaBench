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
 int ENOSPC ; 
 int NR_PMB_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pmb_map ; 

__attribute__((used)) static int FUNC2(void)
{
	int pos;

	pos = FUNC1(pmb_map, NR_PMB_ENTRIES);
	if (pos >= 0 && pos < NR_PMB_ENTRIES)
		FUNC0(pos, pmb_map);
	else
		pos = -ENOSPC;

	return pos;
}