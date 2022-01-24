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
struct TYPE_6__ {int length; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  compare_them ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*,intptr_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	git_vector x;
	intptr_t i;
	FUNC3(&x, 1, &compare_them);

	for (i = 0; i < 10; i += 2) {
		FUNC4(&x, (void*)(i + 1), NULL);
	}

	for (i = 9; i > 0; i -= 2) {
		FUNC4(&x, (void*)(i + 1), NULL);
	}

	for (i = 0; i < 10; i += 2) {
		FUNC4(&x, (void*)(i + 1), NULL);
	}

	for (i = 9; i > 0; i -= 2) {
		FUNC4(&x, (void*)(i + 1), NULL);
	}

	FUNC0(x.length == 20);
	for (i = 0; i < 20; ++i) {
		FUNC0(FUNC2(&x, i) == (void*)(i / 2 + 1));
	}

	FUNC1(&x);
}