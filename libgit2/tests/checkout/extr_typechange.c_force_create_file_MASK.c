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
 int GIT_ENOTFOUND ; 
 int GIT_RMDIR_REMOVE_BLOCKERS ; 
 int GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(const char *file)
{
	int error = FUNC4(file, NULL,
		GIT_RMDIR_REMOVE_FILES | GIT_RMDIR_REMOVE_BLOCKERS);
	FUNC0(!error || error == GIT_ENOTFOUND);
	FUNC1(FUNC3(file, 0777));
	FUNC2(file, "yowza!!");
}