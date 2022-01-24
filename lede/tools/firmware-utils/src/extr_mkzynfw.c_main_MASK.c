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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * board ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/ * ofname ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 char* optopt ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  verblevel ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(int argc, char *argv[])
{
	int optinvalid = 0;   /* flag for invalid option */
	int c;
	int res = EXIT_FAILURE;

	FILE *outfile;

	progname=FUNC3(argv[0]);

	opterr = 0;  /* could not print standard getopt error messages */
	while ( 1 ) {
		optinvalid = 0;

		c = FUNC7(argc, argv, "b:B:ho:r:v");
		if (c == -1)
			break;

		switch (c) {
		case 'b':
		case 'r':
			optinvalid = FUNC8(c,optarg);
			break;
		case 'B':
			optinvalid = FUNC9(c,optarg);
			break;
		case 'o':
			optinvalid = FUNC10(c,optarg);
			break;
		case 'v':
			verblevel++;
			break;
		case 'h':
			FUNC13(EXIT_SUCCESS);
			break;
		default:
			optinvalid = 1;
			break;
		}
		if (optinvalid != 0 ) {
			FUNC1("invalid option: -%c", optopt);
			goto out;
		}
	}

	if (board == NULL) {
		FUNC1("no board specified");
		goto out;
	}

	if (ofname == NULL) {
		FUNC1("no output file specified");
		goto out;
	}

	if (optind < argc) {
		FUNC1("invalid option: %s", argv[optind]);
		goto out;
	}

	if (FUNC11() != 0) {
		goto out;
	}

	outfile = FUNC6(ofname, "w");
	if (outfile == NULL) {
		FUNC2("could not open \"%s\" for writing", ofname);
		goto out;
	}

	if (FUNC14(outfile) != 0)
		goto out_flush;

	FUNC0(1,"Image file %s completed.", ofname);

	res = EXIT_SUCCESS;

out_flush:
	FUNC5(outfile);
	FUNC4(outfile);
	if (res != EXIT_SUCCESS) {
		FUNC12(ofname);
	}
out:
	return res;
}