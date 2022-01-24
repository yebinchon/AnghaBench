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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int do_decrypt ; 
 int FUNC3 (int,char**,char*) ; 
 void* ifname ; 
 void* ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(int argc, char *argv[])
{
	int res = EXIT_FAILURE;
	int err;

	progname = FUNC0(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC3(argc, argv, "di:o:h");
		if (c == -1)
			break;

		switch (c) {
		case 'd':
			do_decrypt = 1;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'h':
			FUNC4(EXIT_SUCCESS);
			break;
		default:
			FUNC4(EXIT_FAILURE);
			break;
		}
	}

	err = FUNC1();
	if (err)
		goto out;

	err = FUNC2();
	if (err)
		goto out;

	res = EXIT_SUCCESS;

out:
	return res;
}