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
 int /*<<< orphan*/  MODE_APPEND ; 
 scalar_t__ MODE_DEFAULT ; 
 int /*<<< orphan*/  MODE_EXTRACT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crc_table ; 
 int FUNC3 (char*) ; 
 scalar_t__ file_mode ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ metadata_file ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int quiet ; 
 int FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ signature_file ; 
 int truncate_file ; 
 int FUNC7 (char const*) ; 

int FUNC8(int argc, char **argv)
{
	const char *progname = argv[0];
	int ret, ch;

	FUNC2(crc_table);

	while ((ch = FUNC4(argc, argv, "i:I:qs:S:t")) != -1) {
		ret = 0;
		switch(ch) {
		case 'S':
			ret = FUNC6(&signature_file, optarg, MODE_APPEND);
			break;
		case 'I':
			ret = FUNC6(&metadata_file, optarg, MODE_APPEND);
			break;
		case 's':
			ret = FUNC6(&signature_file, optarg, MODE_EXTRACT);
			break;
		case 'i':
			ret = FUNC6(&metadata_file, optarg, MODE_EXTRACT);
			break;
		case 't':
			truncate_file = true;
			break;
		case 'q':
			quiet = true;
			break;
		}

		if (ret)
			goto out;
	}

	if (optind >= argc) {
		ret = FUNC7(progname);
		goto out;
	}

	if (file_mode == MODE_DEFAULT) {
		ret = FUNC7(progname);
		goto out;
	}

	if (signature_file && metadata_file) {
		FUNC5("Cannot append/extract metadata and signature in one run\n");
		return 1;
	}

	if (file_mode)
		ret = FUNC0(argv[optind]);
	else
		ret = FUNC3(argv[optind]);

out:
	FUNC1();
	return ret;
}