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
typedef  int /*<<< orphan*/  git_remote ;
struct TYPE_5__ {int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIRECTION_FETCH ; 
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 int /*<<< orphan*/ * _remote ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_buf url = GIT_BUF_INIT;
	git_remote *_remote2 = NULL;

	FUNC1(FUNC7(_remote), "test");
	FUNC1(FUNC9(_remote), "git://github.com/libgit2/libgit2");
	FUNC0(FUNC8(_remote) == NULL);

	FUNC2(FUNC4(&url, _remote, GIT_DIRECTION_FETCH, NULL));
	FUNC1(url.ptr, "git://github.com/libgit2/libgit2");

	FUNC2(FUNC4(&url, _remote, GIT_DIRECTION_PUSH, NULL));
	FUNC1(url.ptr, "git://github.com/libgit2/libgit2");

	FUNC2(FUNC6(&_remote2, _repo, "test_with_pushurl"));
	FUNC1(FUNC7(_remote2), "test_with_pushurl");
	FUNC1(FUNC9(_remote2), "git://github.com/libgit2/fetchlibgit2");
	FUNC1(FUNC8(_remote2), "git://github.com/libgit2/pushlibgit2");

	FUNC2(FUNC4(&url, _remote2, GIT_DIRECTION_FETCH, NULL));
	FUNC1(url.ptr, "git://github.com/libgit2/fetchlibgit2");

	FUNC2(FUNC4(&url, _remote2, GIT_DIRECTION_PUSH, NULL));
	FUNC1(url.ptr, "git://github.com/libgit2/pushlibgit2");

	FUNC5(_remote2);
	FUNC3(&url);
}