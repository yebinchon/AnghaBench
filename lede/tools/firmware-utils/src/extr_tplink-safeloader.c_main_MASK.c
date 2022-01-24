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
struct device_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char const*,unsigned int,int,int,struct device_info*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 struct device_info* FUNC4 (char const*) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int argc, char *argv[]) {
	const char *board = NULL, *kernel_image = NULL, *rootfs_image = NULL, *output = NULL;
	const char *extract_image = NULL, *output_directory = NULL, *convert_image = NULL;
	bool add_jffs2_eof = false, sysupgrade = false;
	unsigned rev = 0;
	struct device_info *info;
	FUNC6();

	while (true) {
		int c;

		c = FUNC5(argc, argv, "B:k:r:o:V:jSh:x:d:z:");
		if (c == -1)
			break;

		switch (c) {
		case 'B':
			board = optarg;
			break;

		case 'k':
			kernel_image = optarg;
			break;

		case 'r':
			rootfs_image = optarg;
			break;

		case 'o':
			output = optarg;
			break;

		case 'V':
			FUNC7(optarg, "r%u", &rev);
			break;

		case 'j':
			add_jffs2_eof = true;
			break;

		case 'S':
			sysupgrade = true;
			break;

		case 'h':
			FUNC8(argv[0]);
			return 0;

		case 'd':
			output_directory = optarg;
			break;

		case 'x':
			extract_image = optarg;
			break;

		case 'z':
			convert_image = optarg;
			break;

		default:
			FUNC8(argv[0]);
			return 1;
		}
	}

	if (extract_image || output_directory) {
		if (!extract_image)
			FUNC2(1, 0, "No factory/oem image given via -x <file>. Output directory is only valid with -x");
		if (!output_directory)
			FUNC2(1, 0, "Can not extract an image without output directory. Use -d <dir>");
		FUNC3(extract_image, output_directory);
	} else if (convert_image) {
		if (!output)
			FUNC2(1, 0, "Can not convert a factory/oem image into sysupgrade image without output file. Use -o <file>");
		FUNC1(convert_image, output);
	} else {
		if (!board)
			FUNC2(1, 0, "no board has been specified");
		if (!kernel_image)
			FUNC2(1, 0, "no kernel image has been specified");
		if (!rootfs_image)
			FUNC2(1, 0, "no rootfs image has been specified");
		if (!output)
			FUNC2(1, 0, "no output filename has been specified");

		info = FUNC4(board);

		if (info == NULL)
			FUNC2(1, 0, "unsupported board %s", board);

		FUNC0(output, kernel_image, rootfs_image, rev, add_jffs2_eof, sysupgrade, info);
	}

	return 0;
}