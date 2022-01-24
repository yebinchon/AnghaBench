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
struct cal_entry {int id; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int Z_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct cal_entry*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (int,char**,char*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int FUNC15(int argc, char **argv)
{
	struct cal_entry cal = { .len = 0 };
	FILE *in = stdin;
	FILE *out = stdout;
	size_t limit = 0, skip = 0;
	int initial_offset = 0;
	int entry = -1;
	int ret;
	int opt;

	while ((opt = FUNC9(argc, argv, "s:e:o:l:i:")) != -1) {
		switch (opt) {
		case 's':
			initial_offset = (int)FUNC8(optarg);
			if (errno) {
				FUNC12("Failed to parse seek offset");
				goto out_bad;
			}
			break;
		case 'e':
			entry = (int) FUNC10(FUNC8(optarg));
			if (errno) {
				FUNC12("Failed to entry id");
				goto out_bad;
			}
			break;
		case 'o':
			out = FUNC4(optarg, "w");
			if (!out) {
				FUNC12("Failed to create output file");
				goto out_bad;
			}
			break;
		case 'l':
			limit = (size_t)FUNC8(optarg);
			if (errno) {
				FUNC12("Failed to parse limit");
				goto out_bad;
			}
			break;
		case 'i':
			skip = (size_t)FUNC8(optarg);
			if (errno) {
				FUNC12("Failed to parse skip");
				goto out_bad;
			}
			break;
		default: /* '?' */
			FUNC13();
		}
	}

	if (entry == -1)
		FUNC13();

	if (argc > 1 && optind <= argc) {
		in = FUNC4(argv[optind], "r");
		if (!in) {
			FUNC12("Failed to create output file");
			goto out_bad;
		}
	}

	if (initial_offset) {
		ret = FUNC7(in, initial_offset, SEEK_CUR);
		if (ret) {
			FUNC12("Failed to seek to calibration table");
			goto out_bad;
		}
	}

	do {
		ret = FUNC7(in, FUNC0(cal.len), SEEK_CUR);
		if (FUNC2(in)) {
			FUNC5(stderr, "Reached end of file, but didn't find the matching entry\n");
			goto out_bad;
		} else if (FUNC3(in)) {
			FUNC12("Failure during seek");
			goto out_bad;
		}

		ret = FUNC6(&cal, 1, sizeof cal, in);
		if (ret != sizeof cal)
			goto out_bad;
	} while (entry != cal.id || cal.id == 0xffff);

	if (cal.id == 0xffff) {
		FUNC5(stderr, "Reached end of filesystem, but didn't find the matching entry\n");
		goto out_bad;
	}

	ret = FUNC11(in, out, limit, skip);
	if (ret == Z_OK)
		goto out;

	FUNC14(ret);

out_bad:
	ret = EXIT_FAILURE;

out:
	FUNC1(in);
	FUNC1(out);
	return ret;
}