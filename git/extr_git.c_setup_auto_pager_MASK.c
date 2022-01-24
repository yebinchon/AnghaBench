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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int use_pager ; 

void FUNC3(const char *cmd, int def)
{
	if (use_pager != -1 || FUNC2())
		return;
	use_pager = FUNC0(cmd);
	if (use_pager == -1)
		use_pager = def;
	FUNC1();
}