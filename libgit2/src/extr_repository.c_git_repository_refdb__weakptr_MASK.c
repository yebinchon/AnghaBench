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
struct TYPE_5__ {int /*<<< orphan*/ * _refdb; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_refdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,TYPE_1__*) ; 

int FUNC5(git_refdb **out, git_repository *repo)
{
	int error = 0;

	FUNC1(out && repo);

	if (repo->_refdb == NULL) {
		git_refdb *refdb;

		error = FUNC4(&refdb, repo);
		if (!error) {
			FUNC0(refdb, repo);

			refdb = FUNC2(&repo->_refdb, NULL, refdb);
			if (refdb != NULL) {
				FUNC0(refdb, NULL);
				FUNC3(refdb);
			}
		}
	}

	*out = repo->_refdb;
	return error;
}