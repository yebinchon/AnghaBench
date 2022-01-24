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
typedef  int /*<<< orphan*/  git_pqueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_ints_like_commit_time ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_pqueue pq;
	int i, j, *val;
	static int commands[] =
		{ 6, 9, 8, 0, 5, 0, 7, 0, 4, 3, 0, 0, 0, 4, 0, 2, 0, 1, 0, 0, -1 };
	static int expected[] =
		{ 9, 8, 7, 6, 5, 4, 4, 3, 2, 1, -1 };

	FUNC2(FUNC4(&pq, 0, 10, cmp_ints_like_commit_time));

	for (i = 0, j = 0; commands[i] >= 0; ++i) {
		if (!commands[i]) {
			FUNC0((val = FUNC6(&pq)) != NULL);
			FUNC1(expected[j], *val);
			++j;
		} else {
			FUNC2(FUNC5(&pq, &commands[i]));
		}
	}

	FUNC1(0, FUNC7(&pq));
	FUNC3(&pq);
}