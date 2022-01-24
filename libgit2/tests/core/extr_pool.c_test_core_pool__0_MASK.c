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
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(void)
{
	int i;
	git_pool p;
	void *ptr;

	FUNC3(&p, 1);

	for (i = 1; i < 10000; i *= 2) {
		ptr = FUNC4(&p, i);
		FUNC0(ptr != NULL);
		FUNC0(FUNC1(&p, ptr));
		FUNC0(!FUNC1(&p, &i));
	}

	FUNC2(&p);
}