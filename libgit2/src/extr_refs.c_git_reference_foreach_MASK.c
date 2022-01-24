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
typedef  int /*<<< orphan*/  git_reference_iterator ;
typedef  int (* git_reference_foreach_cb ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC4(
	git_repository *repo,
	git_reference_foreach_cb callback,
	void *payload)
{
	git_reference_iterator *iter;
	git_reference *ref;
	int error;

	if ((error = FUNC2(&iter, repo)) < 0)
		return error;

	while (!(error = FUNC3(&ref, iter))) {
		if ((error = callback(ref, payload)) != 0) {
			FUNC0(error);
			break;
		}
	}

	if (error == GIT_ITEROVER)
		error = 0;

	FUNC1(iter);
	return error;
}