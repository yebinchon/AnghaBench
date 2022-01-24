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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* optarg ; 
 int optind ; 
 int optopt ; 
 char* FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (char* const,char*) ; 

int
FUNC3 (int argc, char *const argv[], const char *opts)
{
	static int sp = 1;
	int c;
	char *cp;

	if (sp == 1) {
		if (optind >= argc ||
		   argv[optind][0] != '-' || argv[optind][1] == '\0')
			return -1;
		else if (FUNC2(argv[optind], "--") == 0) {
			optind++;
			return -1;
		}
	}
	optopt = c = argv[optind][sp];
	if (c == ':' || (cp=FUNC1(opts, c)) == 0) {
		FUNC0 (": illegal option -- ", c);
		if (argv[optind][++sp] == '\0') {
			optind++;
			sp = 1;
		}
		return '?';
	}
	if (*++cp == ':') {
		if (argv[optind][sp+1] != '\0')
			optarg = &argv[optind++][sp+1];
		else if (++optind >= argc) {
			FUNC0 (": option requires an argument -- ", c);
			sp = 1;
			return '?';
		} else
			optarg = argv[optind++];
		sp = 1;
	} else {
		if (argv[optind][++sp] == '\0') {
			sp = 1;
			optind++;
		}
		optarg = 0;
	}
	return c;
}