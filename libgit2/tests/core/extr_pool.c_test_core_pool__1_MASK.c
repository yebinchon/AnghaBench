#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int page_size; } ;
typedef  TYPE_1__ git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int) ; 

void FUNC6(void)
{
	int i;
	git_pool p;

	FUNC4(&p, 1);
	p.page_size = 4000;

	for (i = 2010; i > 0; i--)
		FUNC0(FUNC5(&p, i) != NULL);

#ifndef GIT_DEBUG_POOL
	/* with fixed page size, allocation must end up with these values */
	FUNC1(591, FUNC2(&p));
#endif
	FUNC3(&p);

	FUNC4(&p, 1);
	p.page_size = 4120;

	for (i = 2010; i > 0; i--)
		FUNC0(FUNC5(&p, i) != NULL);

#ifndef GIT_DEBUG_POOL
	/* with fixed page size, allocation must end up with these values */
	FUNC1(sizeof(void *) == 8 ? 575 : 573, FUNC2(&p));
#endif
	FUNC3(&p);
}