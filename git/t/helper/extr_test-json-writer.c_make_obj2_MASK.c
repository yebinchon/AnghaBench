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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  obj2 ; 

__attribute__((used)) static void FUNC3(int pretty)
{
	FUNC1(&obj2, pretty);
	{
		FUNC2(&obj2, "a", -1);
		FUNC2(&obj2, "b", 0x7fffffff);
		FUNC2(&obj2, "c", 0);
	}
	FUNC0(&obj2);
}