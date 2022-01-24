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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	struct stat st;

	if (!FUNC8())
		FUNC5();

	FUNC3("stat_target", "This is the target of a symbolic link.\n");
	FUNC6("stat_target", "stat_symlink", 0);

	FUNC4(FUNC7("stat_target", &st));
	FUNC1(FUNC0(st.st_mode));
	FUNC2(39, st.st_size);

	FUNC4(FUNC7("stat_symlink", &st));
	FUNC1(FUNC0(st.st_mode));
	FUNC2(39, st.st_size);
}