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
typedef  int /*<<< orphan*/  git_odb_backend ;

/* Variables and functions */
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/ * _repo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  foreach_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_odb_backend *backend = NULL;
	int nobj = 0;

	FUNC2(FUNC6(&_odb));
	FUNC2(FUNC4(&backend, FUNC1("testrepo.git/objects/pack/pack-a81e489679b7d3418f9ab594bda8ceb37dd4c695.idx")));
	FUNC2(FUNC3(_odb, backend, 1));
	_repo = NULL;

	FUNC2(FUNC5(_odb, foreach_cb, &nobj));
	FUNC0(nobj == 1628);
}