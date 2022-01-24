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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_ints ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_pqueue pq;
	int i, vals[20];

	FUNC2(FUNC4(&pq, 0, 20, cmp_ints));

	for (i = 0; i < 20; ++i) {
		if (i < 10)
			vals[i] = 10 - i; /* 10 down to 1 */
		else
			vals[i] = i + 1;  /* 11 up to 20 */

		FUNC2(FUNC5(&pq, &vals[i]));
	}

	FUNC1(20, FUNC7(&pq));

	for (i = 1; i <= 20; ++i) {
		void *p = FUNC6(&pq);
		FUNC0(p);
		FUNC1(i, *(int *)p);
	}

	FUNC1(0, FUNC7(&pq));

	FUNC3(&pq);
}