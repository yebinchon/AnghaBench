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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  olen ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (scalar_t__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char *argv[])
{
	uint32_t olen;
	long ilen;
	FILE *f = NULL;
	int retval = 1;

	if (argc < 2) {
		FUNC2(stderr, "Usage: %s compressed_file\n", argv[0]);
		goto bail;
	}

	/* Get the information for the compressed kernel image first */

	f = FUNC1(argv[1], "r");
	if (!f) {
		FUNC7(argv[1]);
		goto bail;
	}


	if (FUNC4(f, -4L, SEEK_END)) {
		FUNC7(argv[1]);
	}

	if (FUNC3(&olen, sizeof(olen), 1, f) != 1) {
		FUNC7(argv[1]);
		goto bail;
	}

	ilen = FUNC5(f);
	olen = FUNC6(&olen);

	FUNC8(".section \".rodata..compressed\",\"a\",@progbits\n");
	FUNC8(".globl z_input_len\n");
	FUNC8("z_input_len = %lu\n", ilen);
	FUNC8(".globl z_output_len\n");
	FUNC8("z_output_len = %lu\n", (unsigned long)olen);

	FUNC8(".globl input_data, input_data_end\n");
	FUNC8("input_data:\n");
	FUNC8(".incbin \"%s\"\n", argv[1]);
	FUNC8("input_data_end:\n");

	retval = 0;
bail:
	if (f)
		FUNC0(f);
	return retval;
}