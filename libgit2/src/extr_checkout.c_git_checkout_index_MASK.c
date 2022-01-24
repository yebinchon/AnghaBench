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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_CHECKOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC9(
	git_repository *repo,
	git_index *index,
	const git_checkout_options *opts)
{
	int error, owned = 0;
	git_iterator *index_i;

	if (!index && !repo) {
		FUNC3(GIT_ERROR_CHECKOUT,
			"must provide either repository or index to checkout");
		return -1;
	}

	if (index && repo &&
		FUNC5(index) &&
		FUNC5(index) != repo) {
		FUNC3(GIT_ERROR_CHECKOUT,
			"index to checkout does not match repository");
		return -1;
	} else if(index && repo && !FUNC5(index)) {
		FUNC1(index, repo);
		owned = 1;
	}

	if (!repo)
		repo = FUNC5(index);

	if (!index && (error = FUNC8(&index, repo)) < 0)
		return error;
	FUNC0(index);

	if (!(error = FUNC6(&index_i, repo, index, NULL)))
		error = FUNC2(index_i, index, opts);

	if (owned)
		FUNC1(index, NULL);

	FUNC7(index_i);
	FUNC4(index);

	return error;
}