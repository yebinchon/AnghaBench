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
 scalar_t__ FUNC0 (char*,char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ input_file ; 
 scalar_t__ iter_end ; 
 scalar_t__ iter_start ; 
 char* optarg ; 
 char* prog ; 
 unsigned int seed ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ stdin ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  verbose ; 
 int x86_64 ; 

__attribute__((used)) static void FUNC7(int argc, char **argv)
{
	int c;
	char *tmp = NULL;
	int set_seed = 0;

	prog = argv[0];
	while ((c = FUNC1(argc, argv, "ynvs:m:i:")) != -1) {
		switch (c) {
		case 'y':
			x86_64 = 1;
			break;
		case 'n':
			x86_64 = 0;
			break;
		case 'v':
			verbose++;
			break;
		case 'i':
			if (FUNC4("-", optarg) == 0)
				input_file = stdin;
			else
				input_file = FUNC0(optarg, "r");
			if (!input_file)
				FUNC6("Failed to open input file");
			break;
		case 's':
			seed = (unsigned int)FUNC5(optarg, &tmp, 0);
			if (*tmp == ',') {
				optarg = tmp + 1;
				iter_start = FUNC5(optarg, &tmp, 0);
			}
			if (*tmp != '\0' || tmp == optarg)
				FUNC6("Failed to parse seed");
			set_seed = 1;
			break;
		case 'm':
			iter_end = FUNC5(optarg, &tmp, 0);
			if (*tmp != '\0' || tmp == optarg)
				FUNC6("Failed to parse max_iter");
			break;
		default:
			FUNC6(NULL);
		}
	}

	/* Check errors */
	if (iter_end < iter_start)
		FUNC6("Max iteration number must be bigger than iter-num");

	if (set_seed && input_file)
		FUNC6("Don't use input file (-i) with random seed (-s)");

	/* Initialize random seed */
	if (!input_file) {
		if (!set_seed)	/* No seed is given */
			FUNC2();
		FUNC3(seed);
	}
}