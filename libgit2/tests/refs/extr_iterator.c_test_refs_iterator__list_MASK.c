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
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_reference_iterator ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  refcmp_cb ; 
 int /*<<< orphan*/  refnames ; 
 int /*<<< orphan*/  repo ; 

void FUNC7(void)
{
	git_reference_iterator *iter;
	git_vector output;
	git_reference *ref;

	FUNC1(FUNC5(&output, 33, &refcmp_cb));
	FUNC1(FUNC3(&iter, repo));

	while (1) {
		int error = FUNC4(&ref, iter);
		if (error == GIT_ITEROVER)
			break;
		FUNC1(error);
		FUNC1(FUNC6(&output, ref));
	}

	FUNC2(iter);

	FUNC0(refnames, &output);
}