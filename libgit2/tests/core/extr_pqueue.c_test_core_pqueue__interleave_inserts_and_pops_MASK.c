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
	int chunk, v, i, vals[200];

	FUNC2(FUNC4(&pq, 0, 20, cmp_ints));

	for (v = 0, chunk = 20; chunk <= 200; chunk += 20) {
		/* push the next 20 */
		for (; v < chunk; ++v) {
			vals[v] = (v & 1) ? 200 - v : v;
			FUNC2(FUNC5(&pq, &vals[v]));
		}

		/* pop the lowest 10 */
		for (i = 0; i < 10; ++i)
			(void)FUNC6(&pq);
	}

	FUNC1(100, FUNC7(&pq));

	/* at this point, we've popped 0-99 */

	for (v = 100; v < 200; ++v) {
		void *p = FUNC6(&pq);
		FUNC0(p);
		FUNC1(v, *(int *)p);
	}

	FUNC1(0, FUNC7(&pq));

	FUNC3(&pq);
}