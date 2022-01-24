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
struct args_info {char** argv; size_t pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

int FUNC3(int *out, struct args_info *args, const char *opt)
{
	const char *found = args->argv[args->pos];

	if (!FUNC0(found, opt)) {
		*out = 1;
		return 1;
	}

	if (!FUNC2(found, "--no-", FUNC1("--no-")) &&
	    !FUNC0(found + FUNC1("--no-"), opt + 2)) {
		*out = 0;
		return 1;
	}

	*out = -1;
	return 0;
}