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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void FUNC2(void)
{
	FUNC1("123", 123, 10);
	FUNC1("  +123 ", 123, 10);
	FUNC1("  +2147483647 ", 2147483647, 10);
	FUNC1("  -2147483648 ", -2147483648LL, 10);
	FUNC1("A", 10, 16);
	FUNC1("1x1", 1, 10);

	FUNC0("", 10);
	FUNC0("a", 10);
	FUNC0("x10x", 10);
	FUNC0("  2147483657 ", 10);
	FUNC0("  -2147483657 ", 10);
}