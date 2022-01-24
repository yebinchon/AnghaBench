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
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

void FUNC13(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	const char *dir = "linkdir", *source = "linkdir/link";

	if (!FUNC10(FUNC3()))
		FUNC2();

	FUNC1(FUNC11(dir, 0777));
	FUNC1(FUNC12("target", source));

	FUNC1(FUNC6(&file, source, 0, 0666));
	FUNC1(FUNC7(&file, "%s\n", "libgit2 rocks"));

	FUNC0(true, FUNC9("linkdir/target.lock"));

	FUNC1(FUNC5(&file));
	FUNC0(true, FUNC9("linkdir/target"));

	FUNC4(&file);

	/* The second time around, the target file does exist */
	FUNC1(FUNC6(&file, source, 0, 0666));
	FUNC1(FUNC7(&file, "%s\n", "libgit2 rocks"));

	FUNC0(true, FUNC9("linkdir/target.lock"));

	FUNC1(FUNC5(&file));
	FUNC0(true, FUNC9("linkdir/target"));

	FUNC4(&file);
	FUNC1(FUNC8(dir, NULL, GIT_RMDIR_REMOVE_FILES));
}