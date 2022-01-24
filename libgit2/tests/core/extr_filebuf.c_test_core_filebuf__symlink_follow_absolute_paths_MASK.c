#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	git_filebuf file = GIT_FILEBUF_INIT;
	git_buf source = GIT_BUF_INIT, target = GIT_BUF_INIT;

	if (!FUNC12(FUNC3()))
		FUNC2();

	FUNC1(FUNC5(&source, FUNC3(), "linkdir/link"));
	FUNC1(FUNC5(&target, FUNC3(), "linkdir/target"));
	FUNC1(FUNC13("linkdir", 0777));
	FUNC1(FUNC14(target.ptr, source.ptr));

	FUNC1(FUNC8(&file, source.ptr, 0, 0666));
	FUNC1(FUNC9(&file, "%s\n", "libgit2 rocks"));

	FUNC0(true, FUNC11("linkdir/target.lock"));

	FUNC1(FUNC7(&file));
	FUNC0(true, FUNC11("linkdir/target"));

	FUNC6(&file);
	FUNC4(&source);
	FUNC4(&target);

	FUNC1(FUNC10("linkdir", NULL, GIT_RMDIR_REMOVE_FILES));
}