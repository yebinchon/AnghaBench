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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

void FUNC15(void)
{
	git_buf target_path = GIT_BUF_INIT;
	struct stat st;

	if (!FUNC14())
		FUNC6();

	/* Windows always writes the canonical path as the link target, so
	 * write the full path on all platforms.
	 */
	FUNC11(&target_path, '/', FUNC7(), "lstat_target");

	FUNC4("lstat_target", "This is the target of a symbolic link.\n");
	FUNC8(FUNC9(&target_path), "lstat_symlink", 0);

	FUNC5(FUNC13("lstat_target", &st));
	FUNC2(FUNC1(st.st_mode));
	FUNC3(39, st.st_size);

	FUNC5(FUNC13("lstat_symlink", &st));
	FUNC2(FUNC0(st.st_mode));
	FUNC3(FUNC12(&target_path), st.st_size);

	FUNC10(&target_path);
}