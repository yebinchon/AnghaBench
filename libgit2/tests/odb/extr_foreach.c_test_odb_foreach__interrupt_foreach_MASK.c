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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  foreach_stop_cb ; 
 int /*<<< orphan*/  foreach_stop_cb_positive_ret ; 
 int /*<<< orphan*/  foreach_stop_first_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	int nobj = 0;
	git_oid id;

	FUNC3(FUNC10(&_repo, FUNC2("testrepo.git")));
	FUNC9(&_odb, _repo);

	FUNC1(-321, FUNC4(_odb, foreach_stop_cb, &nobj));
	FUNC0(nobj == 1000);

	nobj = 0;

	FUNC1(321, FUNC4(_odb, foreach_stop_cb_positive_ret, &nobj));
	FUNC0(nobj == 1000);

	FUNC5(_odb);
	FUNC7(_repo);

	FUNC3(FUNC8(&_repo, "onlyloose.git", true));
	FUNC9(&_odb, _repo);

	FUNC3(FUNC6(&id, _odb, "", 0, GIT_OBJECT_BLOB));
	FUNC1(-123, FUNC4(_odb, foreach_stop_first_cb, &nobj));
}