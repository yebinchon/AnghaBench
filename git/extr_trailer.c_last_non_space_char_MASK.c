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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static char FUNC2(const char *s)
{
	int i;
	for (i = FUNC1(s) - 1; i >= 0; i--)
		if (!FUNC0(s[i]))
			return s[i];
	return '\0';
}