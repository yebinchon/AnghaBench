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
 void* base1 ; 
 void* base2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* brand ; 
 int FUNC1 () ; 
 int dhp ; 
 void* flag ; 
 int FUNC2 (int,char**,char*) ; 
 void* hwver ; 
 void* language ; 
 void* major ; 
 void* minor ; 
 void* ofname ; 
 void* optarg ; 
 void* platform ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 void* product ; 
 int /*<<< orphan*/  progname ; 
 int skipcrc ; 
 void* FUNC5 (void*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int argc, char *argv[])
{
	int res = EXIT_FAILURE;
	int err;

	progname = FUNC0(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC2(argc, argv, "a:b:c:d:f:hi:l:m:o:p:r:sv:w:I:");
		if (c == -1)
			break;

		switch (c) {
		case 'a':
			platform = optarg;
			break;
		case 'b':
			brand = optarg;
			break;
		case 'c':
			base1 = FUNC5(optarg, NULL, 16);
			break;
		case 'd':
			base2 = FUNC5(optarg, NULL, 16);
			break;
		case 'f':
			flag = FUNC5(optarg, NULL, 2);
			break;
		case 'I':
			dhp = 1;
			/* FALLTHROUGH */
		case 'i':
			err = FUNC3(optarg);
			if (err)
				goto out;
			break;
		case 'l':
			language = optarg;
			break;
		case 'm':
			minor = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'p':
			product = optarg;
			break;
		case 'r':
			err = FUNC4(optarg);
			if (err)
				goto out;
			break;
		case 's':
			skipcrc = 1;
			break;
		case 'v':
			major = optarg;
			break;
		case 'w':
			hwver = optarg;
			break;
		case 'h':
			FUNC7(EXIT_SUCCESS);
			break;
		default:
			FUNC7(EXIT_FAILURE);
			break;
		}
	}

	err = FUNC1();
	if (err)
		goto out;

	err = FUNC6();
	if (err)
		goto out;

	res = EXIT_SUCCESS;

out:
	return res;
}