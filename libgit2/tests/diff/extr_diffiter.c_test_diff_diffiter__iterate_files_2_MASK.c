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
typedef  int /*<<< orphan*/  git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_repository *repo = FUNC3("status");
	git_diff *diff;
	size_t d, num_d;
	int count = 0;

	FUNC2(FUNC6(&diff, repo, NULL, NULL));

	num_d = FUNC7(diff);
	FUNC1(8, (int)num_d);

	for (d = 0; d < num_d; ++d) {
		const git_diff_delta *delta = FUNC5(diff, d);
		FUNC0(delta != NULL);
		count++;
	}
	FUNC1(8, count);

	FUNC4(diff);
}