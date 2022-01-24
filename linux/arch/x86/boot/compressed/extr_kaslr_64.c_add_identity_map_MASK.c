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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  mapping_info ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ top_level_pgt ; 

void FUNC3(unsigned long start, unsigned long size)
{
	unsigned long end = start + size;

	/* Align boundary to 2M. */
	start = FUNC1(start, PMD_SIZE);
	end = FUNC2(end, PMD_SIZE);
	if (start >= end)
		return;

	/* Build the mapping. */
	FUNC0(&mapping_info, (pgd_t *)top_level_pgt,
				  start, end);
}