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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_cmp ; 

void FUNC8(void)
{
	git_vector x;
	int *ptrs[2];

	ptrs[0] = FUNC3(sizeof(int));
	ptrs[1] = FUNC3(sizeof(int));

	*ptrs[0] = 2;
	*ptrs[1] = 1;

	FUNC1(FUNC5(&x, 5, test_cmp));
	FUNC1(FUNC6(&x, ptrs[0]));
	FUNC1(FUNC6(&x, ptrs[1]));
	FUNC1(FUNC6(&x, ptrs[1]));
	FUNC1(FUNC6(&x, ptrs[0]));
	FUNC1(FUNC6(&x, ptrs[1]));
	FUNC0(x.length == 5);

	FUNC7(&x, NULL);
	FUNC0(x.length == 2);

	FUNC4(&x);

	FUNC2(ptrs[0]);
	FUNC2(ptrs[1]);
}