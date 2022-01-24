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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

void FUNC2(void)
{
	FUNC0(FUNC1("", "") == 0);
	FUNC0(FUNC1("foo", "foo") == 0);
	FUNC0(FUNC1("foo", "bar") > 0);
	FUNC0(FUNC1("bar", "foo") < 0);
	FUNC0(FUNC1("foo", "FOO") > 0);
	FUNC0(FUNC1("FOO", "foo") < 0);
	FUNC0(FUNC1("foo", "BAR") > 0);
	FUNC0(FUNC1("BAR", "foo") < 0);
	FUNC0(FUNC1("fooBar", "foobar") < 0);
}