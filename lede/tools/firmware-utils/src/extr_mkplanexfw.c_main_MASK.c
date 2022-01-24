#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  char uchar ;
struct stat {int st_size; } ;
struct planex_hdr {int /*<<< orphan*/  sha1sum; int /*<<< orphan*/  version; int /*<<< orphan*/ * unk1; void* datalen; } ;
typedef  int /*<<< orphan*/  sha1_context ;
typedef  int /*<<< orphan*/  seed ;
struct TYPE_3__ {int datalen; int seed; int /*<<< orphan*/ * unk; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* board ; 
 int /*<<< orphan*/ * board_id ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/ * ifname ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int) ; 
 int /*<<< orphan*/ * ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 char* version ; 

int FUNC21(int argc, char *argv[])
{
	int res = EXIT_FAILURE;
	int buflen;
	int err;
	struct stat st;
	char *buf;
	struct planex_hdr *hdr;
	sha1_context ctx;
	uint32_t seed;

	FILE *outfile, *infile;

	progname = FUNC3(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC11(argc, argv, "B:i:o:v:h");
		if (c == -1)
			break;

		switch (c) {
		case 'B':
			board_id = optarg;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'v':
			version = optarg;
			break;
		case 'h':
			FUNC20(EXIT_SUCCESS);
			break;
		default:
			FUNC20(EXIT_FAILURE);
			break;
		}
	}

	if (board_id == NULL) {
		FUNC0("no board specified");
		goto err;
	}

	board = FUNC6(board_id);
	if (board == NULL) {
		FUNC0("unknown board '%s'", board_id);
		goto err;
	};

	if (ifname == NULL) {
		FUNC0("no input file specified");
		goto err;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		goto err;
	}

	err = FUNC18(ifname, &st);
	if (err){
		FUNC1("stat failed on %s", ifname);
		goto err;
	}

	if (st.st_size > board->datalen) {
		FUNC0("file '%s' is too big - max size: 0x%08X (exceeds %lu bytes)\n",
		    ifname, board->datalen, st.st_size - board->datalen);
		goto err;
	}

	buflen = board->datalen + 0x10000;
	buf = FUNC12(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto err;
	}

	FUNC13(buf, 0xff, buflen);
	hdr = (struct planex_hdr *)buf;

	hdr->datalen = FUNC2(board->datalen);
	hdr->unk1[0] = board->unk[0];
	hdr->unk1[1] = board->unk[1];

	FUNC17(hdr->version, sizeof(hdr->version), "%s", version);

	infile = FUNC7(ifname, "r");
	if (infile == NULL) {
		FUNC1("could not open \"%s\" for reading", ifname);
		goto err_free;
	}

	errno = 0;
	FUNC8(buf +  sizeof(*hdr), st.st_size, 1, infile);
	if (errno != 0) {
		FUNC1("unable to read from file %s", ifname);
		goto err_close_in;
	}

	seed = FUNC2(board->seed);
	FUNC15(&ctx);
	FUNC16(&ctx, (uchar *) &seed, sizeof(seed));
	FUNC16(&ctx, buf + sizeof(*hdr), board->datalen);
	FUNC14(&ctx, hdr->sha1sum);

	outfile = FUNC7(ofname, "w");
	if (outfile == NULL) {
		FUNC1("could not open \"%s\" for writing", ofname);
		goto err_close_in;
	}

	errno = 0;
	FUNC10(buf, buflen, 1, outfile);
	if (errno) {
		FUNC1("unable to write to file %s", ofname);
		goto err_close_out;
	}

	res = EXIT_SUCCESS;

 out_flush:
	FUNC5(outfile);

 err_close_out:
	FUNC4(outfile);
	if (res != EXIT_SUCCESS) {
		FUNC19(ofname);
	}

 err_close_in:
	FUNC4(infile);

 err_free:
	FUNC9(buf);

 err:
	return res;
}