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

/* Variables and functions */
 int /*<<< orphan*/  arr1 ; 
 int /*<<< orphan*/  arr2 ; 
 int /*<<< orphan*/  arr3 ; 
 int /*<<< orphan*/  arr4 ; 
 int /*<<< orphan*/  inline1 ; 
 int /*<<< orphan*/  inline2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mixed1 ; 
 int /*<<< orphan*/  nest1 ; 
 int /*<<< orphan*/  obj1 ; 
 int /*<<< orphan*/  obj2 ; 
 int /*<<< orphan*/  obj3 ; 
 int /*<<< orphan*/  obj4 ; 
 int /*<<< orphan*/  obj5 ; 
 int /*<<< orphan*/  obj6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	/* comptact (canonical) forms */
	FUNC2(obj1);
	FUNC2(obj2);
	FUNC2(obj3);
	FUNC2(obj4);
	FUNC2(obj5);
	FUNC2(obj6);

	FUNC2(arr1);
	FUNC2(arr2);
	FUNC2(arr3);
	FUNC2(arr4);

	FUNC2(nest1);

	FUNC2(inline1);
	FUNC2(inline2);

	FUNC0(&obj1);
	FUNC0(&obj2);
	FUNC0(&obj3);
	FUNC0(&obj4);

	FUNC0(&arr1);
	FUNC0(&arr2);
	FUNC0(&arr3);
	FUNC0(&arr4);

	FUNC0(&inline1);
	FUNC0(&inline2);

	/* pretty forms */
	FUNC1(obj1);
	FUNC1(obj2);
	FUNC1(obj3);
	FUNC1(obj4);

	FUNC1(arr1);
	FUNC1(arr2);
	FUNC1(arr3);
	FUNC1(arr4);

	FUNC1(inline1);
	FUNC1(inline2);

	/* mixed forms */
	FUNC2(mixed1);
	FUNC0(&mixed1);
	FUNC1(mixed1);

	return 0;
}