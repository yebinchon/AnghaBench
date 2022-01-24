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
struct th_data {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference_iterator ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int GIT_ELOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct th_data*,int) ; 
 scalar_t__ g_expected ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC10(void *arg)
{
	struct th_data *data = (struct th_data *) arg;
	git_reference_iterator *i;
	git_reference *ref;
	int count = 0, error;
	git_repository *repo;

	FUNC2(data, FUNC9(&repo, data->path));
	do {
		error = FUNC6(&i, repo);
	} while (error == GIT_ELOCKED);
	FUNC2(data, error);

	for (count = 0; !FUNC7(&ref, i); ++count) {
		FUNC0(ref != NULL);
		FUNC4(ref);
	}

	if (g_expected > 0)
		FUNC1(g_expected, count);

	FUNC5(i);

	FUNC8(repo);
	FUNC3();
	return arg;
}