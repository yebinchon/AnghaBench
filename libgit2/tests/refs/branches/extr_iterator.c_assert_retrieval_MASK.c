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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_branch_t ;
typedef  int /*<<< orphan*/  git_branch_iterator ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC6(unsigned int flags, unsigned int expected_count)
{
	git_branch_iterator *iter;
	git_reference *ref;
	int count = 0, error;
	git_branch_t type;

	FUNC1(FUNC3(&iter, repo, flags));
	while ((error = FUNC4(&ref, &type, iter)) == 0) {
		count++;
		FUNC5(ref);
	}

	FUNC2(iter);
	FUNC0(error, GIT_ITEROVER);
	FUNC0(expected_count, count);
}