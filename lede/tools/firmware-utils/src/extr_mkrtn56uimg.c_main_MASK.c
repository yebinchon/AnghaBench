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
typedef  int op_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
#define  FACTORY 130 
#define  NONE 129 
#define  SYSUPGRADE 128 
 int FUNC0 (int,char**,char*) ; 
 char* optarg ; 
 int FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int
FUNC3(int argc, char **argv)
{
	int 		opt;
	char 		*filename, *progname;
	op_mode_t	opmode = NONE;

	progname = argv[0];

	while ((opt = FUNC0(argc, argv,":s:f:h?")) != -1) {
		switch (opt) {
		case 's':
			opmode = SYSUPGRADE;
			filename = optarg;
			break;
		case 'f':
			opmode = FACTORY;
			filename = optarg;
			break;
		case 'h':
			opmode = NONE;
		default:
			FUNC2(progname, EXIT_FAILURE);
			opmode = NONE;
		}
	}

	if(filename == NULL)
		opmode = NONE;

	switch (opmode) {
	case NONE:
		FUNC2(progname, EXIT_FAILURE);
		break;
	case FACTORY:
	case SYSUPGRADE:
		return FUNC1(progname, filename, opmode);
		break;
	}

	return EXIT_SUCCESS;
}