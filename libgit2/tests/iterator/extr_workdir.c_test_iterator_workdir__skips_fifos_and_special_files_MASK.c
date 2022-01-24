#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int GIT_ITERATOR_DONT_AUTOEXPAND ; 
 int GIT_ITERATOR_INCLUDE_TREES ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 

void FUNC15(void)
{
#ifndef GIT_WIN32
	git_iterator *i;
	const git_index_entry *e;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

	g_repo = FUNC7("empty_standard_repo");

	FUNC8(FUNC14("empty_standard_repo/dir", 0777));
	FUNC5("empty_standard_repo/file", "not me");

	FUNC3(!FUNC13("empty_standard_repo/fifo", 0777));
	FUNC3(!FUNC2("empty_standard_repo/fifo", F_OK));

	i_opts.flags = GIT_ITERATOR_INCLUDE_TREES |
		GIT_ITERATOR_DONT_AUTOEXPAND;

	FUNC6(FUNC11(
		&i, "empty_standard_repo", &i_opts));

	FUNC6(FUNC10(&e, i)); /* .git */
	FUNC3(FUNC0(e->mode));
	FUNC6(FUNC10(&e, i)); /* dir */
	FUNC3(FUNC0(e->mode));
	/* skips fifo */
	FUNC6(FUNC10(&e, i)); /* file */
	FUNC3(FUNC1(e->mode));

	FUNC4(GIT_ITEROVER, FUNC10(&e, i));

	FUNC12(i);
#else
	cl_skip();
#endif
}