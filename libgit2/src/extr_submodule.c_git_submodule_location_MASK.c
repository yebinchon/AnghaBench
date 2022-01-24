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
typedef  int /*<<< orphan*/  git_submodule ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned int *location, git_submodule *sm)
{
	FUNC0(location && sm);

	return FUNC1(
		location, NULL, NULL, NULL, sm, GIT_SUBMODULE_IGNORE_ALL);
}