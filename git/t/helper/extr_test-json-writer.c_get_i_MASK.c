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
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int) ; 

__attribute__((used)) static void FUNC3(int line_nr, intmax_t *s_in)
{
	char *s;
	char *endptr;

	FUNC1(line_nr, &s);

	*s_in = FUNC2(s, &endptr, 10);
	if (*endptr || errno == ERANGE)
		FUNC0("line[%d]: invalid integer value", line_nr);
}