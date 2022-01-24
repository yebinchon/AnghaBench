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
 int FUNC0 () ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const char *s)
{
	static int is_utf8 = -1;
	if (is_utf8 == -1)
		is_utf8 = FUNC0();

	return is_utf8 ? FUNC2(s) : FUNC1(s);
}