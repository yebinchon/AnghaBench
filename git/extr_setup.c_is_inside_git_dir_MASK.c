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
 scalar_t__ inside_git_dir ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	if (inside_git_dir < 0)
		inside_git_dir = FUNC1(FUNC0());
	return inside_git_dir;
}