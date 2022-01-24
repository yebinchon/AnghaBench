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
typedef  int /*<<< orphan*/  md5_state_t ;
typedef  int /*<<< orphan*/  md5_byte_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_LVL2 ; 
 int EOF ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_version ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 unsigned char* img_eof ; 
 unsigned char* img_hdr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 char* FUNC14 (int) ; 

int FUNC15(FILE *f_out, char *out_filename, char *zip_filename) {
	int exitcode = 0;

	md5_state_t state;
	md5_byte_t digest[16];

	int i;
	int size;

	FILE *f_in;
	unsigned char buffer[1];

	// copy firmware version
	FUNC11(&img_hdr[50], fw_version, 2);

	// clear md5 checksum
	FUNC12(&img_hdr[480], 0, 16);

	// prepare md5 checksum calculation
	FUNC10(&state);

	// add img header
	FUNC7(DEBUG_LVL2, " adding img header\n");
	for (i = 0; i < 512; i++) {
		size = FUNC4(img_hdr[i], f_out);
		if (size == EOF) {
			exitcode = FUNC1(f_out);
			FUNC13("output file %s: %s\n", out_filename, FUNC14(exitcode));
			break;
		}
		FUNC8(&state, (const md5_byte_t *)&img_hdr[i], 1);
	}

	// adding zip file
	if (!exitcode) {
		FUNC7(DEBUG_LVL2, " adding zip file\n");
		f_in = FUNC3(zip_filename, "rb");
		if (!f_in) {
			exitcode = errno;
			FUNC13("input file %s: %s\n", zip_filename, FUNC14(exitcode));
		} else {
			while ((size = FUNC2(f_in)) != EOF) {
				buffer[0] = size;

				size = FUNC4(buffer[0], f_out);
				if (size == EOF) {
					exitcode = FUNC1(f_out);
					FUNC13("output file %s: %s\n", out_filename, FUNC14(exitcode));
					break;
				}
				FUNC8(&state, (const md5_byte_t *)buffer, 1);
			}
			if (FUNC1(f_in)) {
				exitcode = FUNC1(f_in);
				FUNC13("input file %s: %s\n", zip_filename, FUNC14(exitcode));
			}
		}

	}

	// add end byte
	if (!exitcode) {
		FUNC7(DEBUG_LVL2, " adding img eof byte\n");
		size = FUNC4(img_eof[0], f_out);
		if (size == EOF) {
			exitcode = FUNC1(f_out);
			FUNC13("output file %s: %s\n", out_filename, FUNC14(exitcode));
		}
		FUNC8(&state, (const md5_byte_t *)img_eof, 1);
	}

	// append salt to md5 checksum
	FUNC8(&state, (const md5_byte_t *)"A^gU*<>?RFY@#DR&Z", 17);

	// finish md5 checksum calculation
	FUNC9(&state, digest);

	// write md5 checksum into img header
	if (!exitcode) {
		FUNC7(DEBUG_LVL2, " writing md5 checksum into img header of file\n");

		size = FUNC5(f_out, 480, SEEK_SET);
		if (size == -1) {
			exitcode = errno;
			FUNC13("output file %s: %s\n", out_filename, FUNC14(exitcode));
		} else {
			size = FUNC6(digest, 16, 1, f_out);
			if (size < 1) {
				if (FUNC1(f_out)) {
					exitcode = FUNC1(f_out);
					FUNC13("output file %s: %s\n", out_filename, FUNC14(exitcode));
				} else {
					exitcode = 1;
					FUNC13("output file %s: unspecified write error\n", out_filename);
				}
			}
		}

		FUNC0(f_in);
	}

	return exitcode;
}