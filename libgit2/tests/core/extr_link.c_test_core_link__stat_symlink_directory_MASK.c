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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	struct stat st;

	if (!FUNC7())
		FUNC3();

	FUNC5("stat_dirtarget", 0777);
	FUNC4("stat_dirtarget", "stat_dirlink", 1);

	FUNC2(FUNC6("stat_dirtarget", &st));
	FUNC1(FUNC0(st.st_mode));

	FUNC2(FUNC6("stat_dirlink", &st));
	FUNC1(FUNC0(st.st_mode));
}