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
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 

void FUNC14(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	char *dir = "subdir",  *test = "subdir/test", *test_lock = "subdir/test.lock";
	int fd;

#ifndef GIT_WIN32
	FUNC5();
#endif

	FUNC4(FUNC12(dir, 0666));
	FUNC3(test, "dummy content");
	fd = FUNC13(test, O_RDONLY);
	FUNC0(fd > 0);
	FUNC4(FUNC8(&file, test, 0, 0666));

	FUNC4(FUNC9(&file, "%s\n", "libgit2 rocks"));

	FUNC1(true, FUNC10(test_lock));

	FUNC2(FUNC7(&file));
	FUNC11(fd);

	FUNC6(&file);

	FUNC1(false, FUNC10(test_lock));
}