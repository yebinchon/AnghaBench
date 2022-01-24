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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  IMAGETAG_CRC_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(int argc, char **argv)
{
	char buf[1024];	/* keep this at 1k or adjust garbage calc below */
	FILE *in = stdin;
	FILE *out = stdout;
	char *ifn = NULL;
	char *ofn = NULL;
	int c;
	int v0, v1, v2;
	size_t n;
	int first_block = 1;

	uint32_t image_crc = IMAGETAG_CRC_START;

	while ((c = FUNC9(argc, argv, "i:o:h")) != -1) {
		switch (c) {
			case 'i':
				ifn = optarg;
				break;
			case 'o':
				ofn = optarg;
				break;
			case 'h':
			default:
				FUNC10();
		}
	}

	if (optind != argc || optind == 1) {
		FUNC6(stderr, "illegal arg \"%s\"\n", argv[optind]);
		FUNC10();
	}

	if (ifn && !(in = FUNC5(ifn, "r"))) {
		FUNC6(stderr, "can not open \"%s\" for reading\n", ifn);
		FUNC10();
	}

	if (ofn && !(out = FUNC5(ofn, "w"))) {
		FUNC6(stderr, "can not open \"%s\" for writing\n", ofn);
		FUNC10();
	}



	while ((n = FUNC7(buf, 1, sizeof(buf), in)) > 0) {
		if (n < sizeof(buf)) {
			if (FUNC2(in)) {
			FREAD_ERROR:
				FUNC6(stderr, "fread error\n");
				return EXIT_FAILURE;
			}
		}

		if (first_block && n >= 256) {
			FUNC4(buf);
			first_block = 0;
		}

		image_crc = FUNC0(image_crc, buf, n);

		if (!FUNC8(buf, n, 1, out)) {
		FWRITE_ERROR:
			FUNC6(stderr, "fwrite error\n");
			return EXIT_FAILURE;
		}
	}

	if (FUNC2(in)) {
		goto FREAD_ERROR;
	}

	if (FUNC3(out)) {
		goto FWRITE_ERROR;
	}

	FUNC1(in);
	FUNC1(out);

	return EXIT_SUCCESS;
}