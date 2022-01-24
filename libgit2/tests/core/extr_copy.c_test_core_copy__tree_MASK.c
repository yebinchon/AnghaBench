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
struct stat {int /*<<< orphan*/  st_mode; scalar_t__ st_size; } ;

/* Variables and functions */
 int GIT_CPDIR_COPY_DOTFILES ; 
 int GIT_CPDIR_COPY_SYMLINKS ; 
 int GIT_CPDIR_CREATE_EMPTY_DIRS ; 
 int GIT_CPDIR_LINK_FILES ; 
 int /*<<< orphan*/  GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct stat*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 size_t FUNC14 (char const*) ; 

void FUNC15(void)
{
	struct stat st;
	const char *content = "File content\n";

	FUNC6(FUNC8("src/b", 0775, GIT_MKDIR_PATH));
	FUNC6(FUNC8("src/c/d", 0775, GIT_MKDIR_PATH));
	FUNC6(FUNC8("src/c/e", 0775, GIT_MKDIR_PATH));

	FUNC5("src/f1", content);
	FUNC5("src/b/f2", content);
	FUNC5("src/c/f3", content);
	FUNC5("src/c/d/f4", content);
	FUNC5("src/c/d/.f5", content);

#ifndef GIT_WIN32
	FUNC3(FUNC13("../../b/f2", "src/c/d/l1") == 0);
#endif

	FUNC3(FUNC10("src"));
	FUNC3(FUNC10("src/b"));
	FUNC3(FUNC10("src/c/d"));
	FUNC3(FUNC11("src/c/d/f4"));

	/* copy with no empty dirs, yes links, no dotfiles, no overwrite */

	FUNC6(
		FUNC7("src", "t1", GIT_CPDIR_COPY_SYMLINKS, 0) );

	FUNC3(FUNC10("t1"));
	FUNC3(FUNC10("t1/b"));
	FUNC3(FUNC10("t1/c"));
	FUNC3(FUNC10("t1/c/d"));
	FUNC3(!FUNC10("t1/c/e"));

	FUNC3(FUNC11("t1/f1"));
	FUNC3(FUNC11("t1/b/f2"));
	FUNC3(FUNC11("t1/c/f3"));
	FUNC3(FUNC11("t1/c/d/f4"));
	FUNC3(!FUNC11("t1/c/d/.f5"));

	FUNC6(FUNC12("t1/c/f3", &st));
	FUNC3(FUNC1(st.st_mode));
	FUNC3(FUNC14(content) == (size_t)st.st_size);

#ifndef GIT_WIN32
	FUNC6(FUNC12("t1/c/d/l1", &st));
	FUNC3(FUNC0(st.st_mode));
#endif

	FUNC6(FUNC9("t1", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC3(!FUNC10("t1"));

	/* copy with empty dirs, no links, yes dotfiles, no overwrite */

	FUNC6(
		FUNC7("src", "t2", GIT_CPDIR_CREATE_EMPTY_DIRS | GIT_CPDIR_COPY_DOTFILES, 0) );

	FUNC3(FUNC10("t2"));
	FUNC3(FUNC10("t2/b"));
	FUNC3(FUNC10("t2/c"));
	FUNC3(FUNC10("t2/c/d"));
	FUNC3(FUNC10("t2/c/e"));

	FUNC3(FUNC11("t2/f1"));
	FUNC3(FUNC11("t2/b/f2"));
	FUNC3(FUNC11("t2/c/f3"));
	FUNC3(FUNC11("t2/c/d/f4"));
	FUNC3(FUNC11("t2/c/d/.f5"));

#ifndef GIT_WIN32
	FUNC4(FUNC12("t2/c/d/l1", &st));
#endif

	FUNC6(FUNC9("t2", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC3(!FUNC10("t2"));

#ifndef GIT_WIN32
	FUNC6(FUNC7("src", "t3", GIT_CPDIR_CREATE_EMPTY_DIRS | GIT_CPDIR_LINK_FILES, 0));
	FUNC3(FUNC10("t3"));

	FUNC3(FUNC10("t3"));
	FUNC3(FUNC10("t3/b"));
	FUNC3(FUNC10("t3/c"));
	FUNC3(FUNC10("t3/c/d"));
	FUNC3(FUNC10("t3/c/e"));

	FUNC2("t3/f1");
	FUNC2("t3/b/f2");
	FUNC2("t3/c/f3");
	FUNC2("t3/c/d/f4");
#endif

	FUNC6(FUNC9("src", NULL, GIT_RMDIR_REMOVE_FILES));
}