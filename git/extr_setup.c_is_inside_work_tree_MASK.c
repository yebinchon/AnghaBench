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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ inside_work_tree ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	if (inside_work_tree < 0)
		inside_work_tree = FUNC1(FUNC0());
	return inside_work_tree;
}