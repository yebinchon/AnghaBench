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
struct option {int* ptr; long min; scalar_t__ isbool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC1 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC2(int argc, char **argv, int *i, const struct option *opt)
{
	long val;
	char *endptr = NULL;
	if (opt->isbool) {
		*opt->ptr = 1;
		return 0;
	}
	if (*i + 1 == argc) {
		FUNC0(stderr, "Too few arguments to '%s'\n",argv[*i]);
		return -1;
	}
	val = FUNC1(argv[*i+1], &endptr, 10);
	if (*argv[*i+1] == '\0' || !endptr || *endptr != '\0') {
		FUNC0(stderr, "Couldn't parse numeric value '%s'\n",
		    argv[*i+1]);
		return -1;
	}
	if (val < opt->min || val > 0x7fffffff) {
		FUNC0(stderr, "Value '%s' is out-of-range'\n",
		    argv[*i+1]);
		return -1;
	}
	*opt->ptr = (int)val;
	++*i;
	return 0;
}