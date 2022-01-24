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
 int /*<<< orphan*/  inline2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC6(int pretty)
{
	FUNC0(&inline2, pretty);
	{
		FUNC1(&inline2);
		{
			FUNC3(&inline2, 1);
			FUNC3(&inline2, 2);
		}
		FUNC4(&inline2);
		FUNC1(&inline2);
		{
			FUNC3(&inline2, 3);
			FUNC3(&inline2, 4);
		}
		FUNC4(&inline2);
		FUNC2(&inline2);
		{
			FUNC5(&inline2, "a", "abc");
		}
		FUNC4(&inline2);
	}
	FUNC4(&inline2);
}