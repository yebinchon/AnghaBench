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
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 

void FUNC4(void)
{
	FUNC0();

	if (FUNC3("attr"))
		FUNC2("attr", NULL, GIT_RMDIR_REMOVE_FILES);
	if (FUNC3("testrepo.git"))
		FUNC2("testrepo.git", NULL, GIT_RMDIR_REMOVE_FILES);
	if (FUNC3("peeled.git"))
		FUNC2("peeled.git", NULL, GIT_RMDIR_REMOVE_FILES);

	FUNC1();
}