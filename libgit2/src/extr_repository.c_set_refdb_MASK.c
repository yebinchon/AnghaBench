#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  _refdb; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_refdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(git_repository *repo, git_refdb *refdb)
{
	if (refdb) {
		FUNC1(refdb, repo);
		FUNC0(refdb);
	}

	if ((refdb = FUNC2(repo->_refdb, refdb)) != NULL) {
		FUNC1(refdb, NULL);
		FUNC3(refdb);
	}
}