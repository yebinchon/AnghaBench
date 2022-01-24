#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_10__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 char const* GIT_REFS_HEADS_DIR ; 
 char const* GIT_SYMREF ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ WM_MATCH ; 
 int /*<<< orphan*/  WM_PATHNAME ; 
 scalar_t__ FUNC1 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,char const*) ; 
 int FUNC8 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC9 (char const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
	int *matches,
	const git_repository *repo,
	const char *cfg_file,
	const char *condition)
{
	git_buf reference = GIT_BUF_INIT, buf = GIT_BUF_INIT;
	int error;

	FUNC0(cfg_file);

	/*
	 * NOTE: you cannot use `git_repository_head` here. Looking up the
	 * HEAD reference will create the ODB, which causes us to read the
	 * repo's config for keys like core.precomposeUnicode. As we're
	 * just parsing the config right now, though, this would result in
	 * an endless recursion.
	 */

	if ((error = FUNC4(&buf, FUNC10(repo), GIT_HEAD_FILE)) < 0 ||
	    (error = FUNC8(&reference, buf.ptr)) < 0)
		goto out;
	FUNC6(&reference);

	if (FUNC1(reference.ptr, GIT_SYMREF, FUNC11(GIT_SYMREF)))
		goto out;
	FUNC2(&reference, reference.ptr + FUNC11(GIT_SYMREF));

	if (FUNC1(reference.ptr, GIT_REFS_HEADS_DIR, FUNC11(GIT_REFS_HEADS_DIR)))
		goto out;
	FUNC2(&reference, reference.ptr + FUNC11(GIT_REFS_HEADS_DIR));

	/*
	 * If the condition ends with a '/', then we should treat it as if
	 * it had '**' appended.
	 */
	if ((error = FUNC7(&buf, condition)) < 0)
		goto out;
	if (FUNC9(condition[FUNC11(condition) - 1]) &&
	    (error = FUNC5(&buf, "**")) < 0)
		goto out;

	*matches = FUNC12(buf.ptr, reference.ptr, WM_PATHNAME) == WM_MATCH;
out:
	FUNC3(&reference);
	FUNC3(&buf);

	return error;

}