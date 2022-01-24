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
typedef  int uint8_t ;
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DNI_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* board_id ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/ * ifname ; 
 char* kernel_size ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 char* region ; 
 char* rootfs_size ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char*,char*,char*,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 char* version ; 

int FUNC16(int argc, char *argv[])
{
	int res = EXIT_FAILURE;
	int buflen;
	int err;
	struct stat st;
	char *buf;
	int i;
	uint8_t csum;

	FILE *outfile, *infile;

	progname = FUNC2(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC9(argc, argv, "B:i:o:v:r:R:K:h");
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
		case 'r':
			region = optarg;
			break;
		case 'R':
			rootfs_size = optarg;
			break;
		case 'K':
			kernel_size = optarg;
			break;
		case 'h':
			FUNC15(EXIT_SUCCESS);
			break;
		default:
			FUNC15(EXIT_FAILURE);
			break;
		}
	}

	if (board_id == NULL) {
		FUNC0("no board specified");
		goto err;
	}

	if (rootfs_size == NULL) {
		FUNC0("no rootfs_size specified");
		goto err;
	}

	if (kernel_size == NULL) {
		FUNC0("no kernel_size specified");
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

	err = FUNC13(ifname, &st);
	if (err){
		FUNC1("stat failed on %s", ifname);
		goto err;
	}

	buflen = st.st_size + DNI_HDR_LEN + 1;
	buf = FUNC10(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto err;
	}

	FUNC11(buf, 0, DNI_HDR_LEN);
	FUNC12(buf, DNI_HDR_LEN, "device:%s\nversion:%s\nregion:%s\n"
		 "RootfsSize:%s\nKernelSize:%s\nInfoHeadSize:128\n",
		 board_id, version, region, rootfs_size, kernel_size);
	buf[DNI_HDR_LEN - 2] = 0x12;
	buf[DNI_HDR_LEN - 1] = 0x32;

	infile = FUNC5(ifname, "r");
	if (infile == NULL) {
		FUNC1("could not open \"%s\" for reading", ifname);
		goto err_free;
	}

	errno = 0;
	FUNC6(buf +  DNI_HDR_LEN, st.st_size, 1, infile);
	if (errno != 0) {
		FUNC1("unable to read from file %s", ifname);
		goto err_close_in;
	}

	csum = 0;
	for (i = 0; i < (st.st_size + DNI_HDR_LEN); i++)
		csum += buf[i];

	csum = 0xff - csum;
	buf[st.st_size + DNI_HDR_LEN] = csum;

	outfile = FUNC5(ofname, "w");
	if (outfile == NULL) {
		FUNC1("could not open \"%s\" for writing", ofname);
		goto err_close_in;
	}

	errno = 0;
	FUNC8(buf, buflen, 1, outfile);
	if (errno) {
		FUNC1("unable to write to file %s", ofname);
		goto err_close_out;
	}

	res = EXIT_SUCCESS;

	FUNC4(outfile);

 err_close_out:
	FUNC3(outfile);
	if (res != EXIT_SUCCESS) {
		FUNC14(ofname);
	}

 err_close_in:
	FUNC3(infile);

 err_free:
	FUNC7(buf);

 err:
	return res;
}