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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void FUNC13(void)
{
	if (!FUNC9(FUNC5()))
		FUNC4();

	FUNC2(FUNC6("a/b", 0777));
	FUNC2(FUNC6("dir-target", 0777));
	FUNC1("dir-target/file", "Contents");
	FUNC1("file-target", "Contents");
	FUNC3(FUNC11("dir-target", "a/symlink"));
	FUNC3(FUNC11("file-target", "a/b/symlink"));

	FUNC2(FUNC7("a", NULL, GIT_RMDIR_REMOVE_FILES));

	FUNC0(FUNC8("dir-target"));
	FUNC0(FUNC8("file-target"));

	FUNC3(FUNC12("dir-target/file"));
	FUNC3(FUNC10("dir-target"));
	FUNC3(FUNC12("file-target"));
}