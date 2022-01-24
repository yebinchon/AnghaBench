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
struct TYPE_5__ {int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fetch_refspecs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * push_refspecs ; 

void FUNC11(void)
{
	git_remote *remote;
	git_strarray array;
	int i;

	FUNC1(FUNC4(&remote, _repo, "query", "git://github.com/libgit2/libgit2", NULL));
	FUNC6(remote);

	for (i = 0; i < 3; i++) {
		FUNC1(FUNC2(_repo, "query", fetch_refspecs[i]));
		FUNC1(FUNC3(_repo, "query", push_refspecs[i]));
	}

	FUNC1(FUNC9(&remote, _repo, "query"));

	FUNC1(FUNC7(&array, remote));
	for (i = 0; i < 3; i++) {
		FUNC0(fetch_refspecs[i], array.strings[i]);
	}
	FUNC10(&array);

	FUNC1(FUNC8(&array, remote));
	for (i = 0; i < 3; i++) {
		FUNC0(push_refspecs[i], array.strings[i]);
	}
	FUNC10(&array);

	FUNC6(remote);
	FUNC5(_repo, "test");
}