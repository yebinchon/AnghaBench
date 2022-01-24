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
typedef  int /*<<< orphan*/  uiAttribute ;

/* Variables and functions */
 int /*<<< orphan*/  attrstr ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static void FUNC4(const char *what, uiAttribute *attr, uiAttribute *attr2)
{
	size_t start, end;

	start = FUNC2(attrstr);
	end = start + FUNC0(what);
	FUNC1(attrstr, what);
	FUNC3(attrstr, attr, start, end);
	if (attr2 != NULL)
		FUNC3(attrstr, attr2, start, end);
}