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
struct expectations {int /*<<< orphan*/  encounters; int /*<<< orphan*/  branch_name; } ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_branch_t ;
typedef  int /*<<< orphan*/  git_branch_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct expectations exp[], git_branch_iterator *iter)
{
	git_reference *ref;
	git_branch_t type;
	int error, pos = 0;

	while ((error = FUNC1(&ref, &type, iter)) == 0) {
		for (pos = 0; exp[pos].branch_name; ++pos) {
			if (FUNC4(FUNC3(ref), exp[pos].branch_name) == 0)
				exp[pos].encounters++;
		}

		FUNC2(ref);
	}

	FUNC0(error, GIT_ITEROVER);
}