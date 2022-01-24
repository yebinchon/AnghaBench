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
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static void FUNC1(int prefix_length, const char **namep, const char **otherp)
{
	/* Strip the prefix but do not molest /dev/null and absolute paths */
	if (*namep && !FUNC0(*namep)) {
		*namep += prefix_length;
		if (**namep == '/')
			++*namep;
	}
	if (*otherp && !FUNC0(*otherp)) {
		*otherp += prefix_length;
		if (**otherp == '/')
			++*otherp;
	}
}