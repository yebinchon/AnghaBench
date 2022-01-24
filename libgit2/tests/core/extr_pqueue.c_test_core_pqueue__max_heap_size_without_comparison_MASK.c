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
 int /*<<< orphan*/  GIT_PQUEUE_FIXED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_pqueue pq;
	int i, vals[100] = { 0 };

	FUNC2(FUNC4(&pq, GIT_PQUEUE_FIXED_SIZE, 50, NULL));

	for (i = 0; i < 100; ++i)
		FUNC2(FUNC5(&pq, &vals[i]));

	FUNC1(50, FUNC7(&pq));

	/* As we have no comparison function, we cannot make any
	 * actual assumptions about which entries are part of the
	 * pqueue */
	for (i = 0; i < 50; ++i)
		FUNC0(FUNC6(&pq));

	FUNC1(0, FUNC7(&pq));

	FUNC3(&pq);
}