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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int) ; 

void FUNC1(void)
{
	FUNC0("a", "[A-Z]", 0, 1, 0, 1);
	FUNC0("A", "[A-Z]", 1, 1, 1, 1);
	FUNC0("A", "[a-z]", 0, 1, 0, 1);
	FUNC0("a", "[a-z]", 1, 1, 1, 1);
	FUNC0("a", "[[:upper:]]", 0, 1, 0, 1);
	FUNC0("A", "[[:upper:]]", 1, 1, 1, 1);
	FUNC0("A", "[[:lower:]]", 0, 1, 0, 1);
	FUNC0("a", "[[:lower:]]", 1, 1, 1, 1);
	FUNC0("A", "[B-Za]", 0, 1, 0, 1);
	FUNC0("a", "[B-Za]", 1, 1, 1, 1);
	FUNC0("A", "[B-a]", 0, 1, 0, 1);
	FUNC0("a", "[B-a]", 1, 1, 1, 1);
	FUNC0("z", "[Z-y]", 0, 1, 0, 1);
	FUNC0("Z", "[Z-y]", 1, 1, 1, 1);
}