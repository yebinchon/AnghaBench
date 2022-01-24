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
typedef  int /*<<< orphan*/  git_reference_iterator ;

/* Variables and functions */
 size_t GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_reference_iterator *iter;
	size_t full_count = 0, concurrent_count = 0;
	const char *name;
	int error;

	FUNC2();
	repo = FUNC3("testrepo");

	FUNC1(FUNC5(&iter, repo));
	while ((error = FUNC6(&name, iter)) == 0) {
		full_count++;
	}

	FUNC4(iter);
	FUNC0(GIT_ITEROVER, error);

	FUNC1(FUNC5(&iter, repo));
	while ((error = FUNC6(&name, iter)) == 0) {
		FUNC1(FUNC7(repo, name));
		concurrent_count++;
	}

	FUNC4(iter);
	FUNC0(GIT_ITEROVER, error);

	FUNC0(full_count, concurrent_count);
}