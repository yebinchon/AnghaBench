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
 int /*<<< orphan*/  CRST_ALLOC_ORDER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long val)
{
	unsigned long table;

	table =	 FUNC0(GFP_KERNEL, CRST_ALLOC_ORDER);
	if (table)
		FUNC1((unsigned long *)table, val);
	return table;
}