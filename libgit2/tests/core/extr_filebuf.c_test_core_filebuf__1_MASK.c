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
typedef  int /*<<< orphan*/  git_filebuf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEBUF_APPEND ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	char test[] = "test";

	FUNC1(test, "libgit2 rocks\n");

	FUNC2(FUNC5(&file, test, GIT_FILEBUF_APPEND, 0666));
	FUNC2(FUNC6(&file, "%s\n", "libgit2 rocks"));
	FUNC2(FUNC4(&file));

	FUNC0("libgit2 rocks\nlibgit2 rocks\n", 0, test);

	FUNC3(FUNC7(test));
}