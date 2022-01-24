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
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,char const**) ; 

__attribute__((used)) static size_t FUNC3(const char *str)
{
	const char *s;

	for (s = str; *s; s = FUNC1(s)) {
		const char *v;

		if (FUNC2(s, "---", &v) && FUNC0(*v))
			return s - str;
	}

	return s - str;
}