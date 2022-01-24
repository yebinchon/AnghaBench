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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct args_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (struct args_info*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

int FUNC3(
	uint32_t *out, struct args_info *args, const char *opt)
{
	const char *found = FUNC1(args, opt);
	uint16_t val;
	char *endptr = NULL;

	if (!found)
		return 0;

	val = (uint32_t)FUNC2(found, &endptr, 0);
	if (!endptr || *endptr != '\0')
		FUNC0("expected number after argument", opt);

	if (out)
		*out = val;
	return 1;
}