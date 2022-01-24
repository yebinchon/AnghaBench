#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_3__ {int /*<<< orphan*/  files; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ diff_expects ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,float,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	git_repository *repo = FUNC3("attr");
	git_diff *diff;
	size_t d, num_d;
	diff_expects exp = { 0 };

	FUNC2(FUNC7(&diff, repo, NULL, NULL));

	num_d = FUNC8(diff);

	for (d = 0; d < num_d; ++d) {
		const git_diff_delta *delta = FUNC6(diff, d);
		FUNC0(delta != NULL);

		FUNC4(delta, (float)d / (float)num_d, &exp);
	}
	FUNC1(6, exp.files);

	FUNC5(diff);
}