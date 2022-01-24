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
struct stat {unsigned int st_size; } ;
struct pc1_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int decrypt ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/ * ifname ; 
 char* FUNC10 (unsigned int) ; 
 int /*<<< orphan*/ * ofname ; 
 int /*<<< orphan*/ * optarg ; 
 int /*<<< orphan*/  FUNC11 (struct pc1_ctx*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct pc1_ctx*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct pc1_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct pc1_ctx*) ; 
 int /*<<< orphan*/  progname ; 
 int FUNC15 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

int FUNC18(int argc, char *argv[])
{
	struct pc1_ctx pc1;
	int res = EXIT_FAILURE;
	int err;
	struct stat st;
	char *buf;
	unsigned total;

	FILE *outfile, *infile;

	progname = FUNC2(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC9(argc, argv, "di:o:h");
		if (c == -1)
			break;

		switch (c) {
		case 'd':
			decrypt = 1;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'h':
			FUNC17(EXIT_SUCCESS);
			break;
		default:
			FUNC17(EXIT_FAILURE);
			break;
		}
	}

	if (ifname == NULL) {
		FUNC0("no input file specified");
		goto err;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		goto err;
	}

	err = FUNC15(ifname, &st);
	if (err){
		FUNC1("stat failed on %s", ifname);
		goto err;
	}

	total = st.st_size;
	buf = FUNC10(BUFSIZE);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto err;
	}

	infile = FUNC5(ifname, "r");
	if (infile == NULL) {
		FUNC1("could not open \"%s\" for reading", ifname);
		goto err_free;
	}

	outfile = FUNC5(ofname, "w");
	if (outfile == NULL) {
		FUNC1("could not open \"%s\" for writing", ofname);
		goto err_close_in;
	}

	FUNC14(&pc1);
	while (total > 0) {
		unsigned datalen;

		if (total > BUFSIZE)
			datalen = BUFSIZE;
		else
			datalen = total;

		errno = 0;
		FUNC6(buf, datalen, 1, infile);
		if (errno != 0) {
			FUNC1("unable to read from file %s", ifname);
			goto err_close_out;
		}

		if (decrypt)
			FUNC11(&pc1, buf, datalen);
		else
			FUNC12(&pc1, buf, datalen);

		errno = 0;
		FUNC8(buf, datalen, 1, outfile);
		if (errno) {
			FUNC1("unable to write to file %s", ofname);
			goto err_close_out;
		}

		total -= datalen;
	}
	FUNC13(&pc1);

	res = EXIT_SUCCESS;

 out_flush:
	FUNC4(outfile);

 err_close_out:
	FUNC3(outfile);
	if (res != EXIT_SUCCESS) {
		FUNC16(ofname);
	}

 err_close_in:
	FUNC3(infile);

 err_free:
	FUNC7(buf);

 err:
	return res;
}