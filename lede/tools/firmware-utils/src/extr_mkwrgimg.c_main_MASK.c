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
struct wrg_header {int /*<<< orphan*/  offset; int /*<<< orphan*/  size; int /*<<< orphan*/  magic2; int /*<<< orphan*/  magic1; int /*<<< orphan*/  devname; int /*<<< orphan*/  signature; } ;
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int WRG_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int big_endian ; 
 int /*<<< orphan*/ * dev_name ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wrg_header*,char*,int) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/ * ifname ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct wrg_header*,char,int) ; 
 int offset ; 
 int /*<<< orphan*/ * ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * signature ; 
 int FUNC14 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC16 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

int FUNC19(int argc, char *argv[])
{
	struct wrg_header *header;
	char *buf;
	struct stat st;
	int buflen;
	int err;
	int res = EXIT_FAILURE;

	FILE *outfile, *infile;

	progname = FUNC2(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC10(argc, argv, "bd:i:o:s:O:h");
		if (c == -1)
			break;

		switch (c) {
		case 'b':
			big_endian = 1;
			break;
		case 'd':
			dev_name = optarg;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 's':
			signature = optarg;
			break;
		case 'O':
			offset = FUNC16(optarg, NULL, 0);
			break;
		case 'h':
			FUNC18(EXIT_SUCCESS);
			break;

		default:
			FUNC18(EXIT_FAILURE);
			break;
		}
	}

	if (signature == NULL) {
		FUNC0("no signature specified");
		goto err;
	}

	if (ifname == NULL) {
		FUNC0("no input file specified");
		goto err;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		goto err;
	}

	if (dev_name == NULL) {
		FUNC0("no device name specified");
		goto err;
	}

	err = FUNC14(ifname, &st);
	if (err){
		FUNC1("stat failed on %s", ifname);
		goto err;
	}

	buflen = st.st_size + sizeof(struct wrg_header);
	buf = FUNC11(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto err;
	}

	infile = FUNC5(ifname, "r");
	if (infile == NULL) {
		FUNC1("could not open \"%s\" for reading", ifname);
		goto err_free;
	}

	errno = 0;
	FUNC6(buf + sizeof(struct wrg_header), st.st_size, 1, infile);
	if (errno != 0) {
		FUNC1("unable to read from file %s", ifname);
		goto close_in;
	}

	header = (struct wrg_header *) buf;
	FUNC12(header, '\0', sizeof(struct wrg_header));

	FUNC15(header->signature, signature, sizeof(header->signature));
	FUNC15(header->devname, dev_name, sizeof(header->signature));
	FUNC13(&header->magic1, WRG_MAGIC);
	FUNC13(&header->magic2, WRG_MAGIC);
	FUNC13(&header->size, st.st_size);
	FUNC13(&header->offset, offset);

	FUNC9(header, buf + sizeof(struct wrg_header), st.st_size);

	outfile = FUNC5(ofname, "w");
	if (outfile == NULL) {
		FUNC1("could not open \"%s\" for writing", ofname);
		goto close_in;
	}

	errno = 0;
	FUNC8(buf, buflen, 1, outfile);
	if (errno) {
		FUNC1("unable to write to file %s", ofname);
		goto close_out;
	}

	FUNC4(outfile);

	res = EXIT_SUCCESS;

close_out:
	FUNC3(outfile);
	if (res != EXIT_SUCCESS)
		FUNC17(ofname);
close_in:
	FUNC3(infile);
err_free:
	FUNC7(buf);
err:
	return res;
}