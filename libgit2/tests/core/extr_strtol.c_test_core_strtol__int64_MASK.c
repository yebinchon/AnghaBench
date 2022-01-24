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
 int INT64_MAX ; 
 int INT64_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void FUNC2(void)
{
	FUNC1("123", 123, 10);
	FUNC1("  +123 ", 123, 10);
	FUNC1("  +2147483647 ", 2147483647, 10);
	FUNC1("  -2147483648 ", -2147483648LL, 10);
	FUNC1("  2147483657 ", 2147483657LL, 10);
	FUNC1("  -2147483657 ", -2147483657LL, 10);
	FUNC1(" 9223372036854775807  ", INT64_MAX, 10);
	FUNC1("   -9223372036854775808  ", INT64_MIN, 10);
	FUNC1("   0x7fffffffffffffff  ", INT64_MAX, 16);
	FUNC1("   -0x8000000000000000   ", INT64_MIN, 16);
	FUNC1("1a", 26, 16);
	FUNC1("1A", 26, 16);

	FUNC0("", 10);
	FUNC0("a", 10);
	FUNC0("x10x", 10);
	FUNC0("0x8000000000000000", 16);
	FUNC0("-0x8000000000000001", 16);
}