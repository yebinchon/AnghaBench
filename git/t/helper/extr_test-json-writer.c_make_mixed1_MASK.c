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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mixed1 ; 
 int /*<<< orphan*/  obj1 ; 

__attribute__((used)) static void FUNC6(int pretty)
{
	FUNC1(&obj1);
	FUNC1(&arr1);

	FUNC5(0); /* obj1 is compact */
	FUNC4(1); /* arr1 is pretty */

	FUNC2(&mixed1, pretty);
	{
		FUNC3(&mixed1, "obj1", &obj1);
		FUNC3(&mixed1, "arr1", &arr1);
	}
	FUNC0(&mixed1);
}