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
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ref ; 
 int /*<<< orphan*/  repo ; 

void FUNC4(void)
{
	const char *name;

	FUNC1(FUNC2(&ref,repo,"master",GIT_BRANCH_LOCAL));
	FUNC1(FUNC3(&name,ref));
	FUNC0("master",name);
}