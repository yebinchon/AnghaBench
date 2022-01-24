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
 int /*<<< orphan*/  FUNC0 (char*,char*,void*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  end_addr ; 
 int force ; 
 void* fw_version ; 
 int FUNC4 (int,char**,char*) ; 
 void* ifname ; 
 int /*<<< orphan*/  image_type ; 
 void* magic ; 
 void* model ; 
 void* mtd_name ; 
 void* ofname ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  start_addr ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;

	progname = FUNC1(argv[0]);

	while (1) {
		int c;

		c = FUNC4(argc, argv, "e:fhi:o:m:M:n:s:t:v:");
		if (c == -1)
			break;

		switch (c) {
		case 'e':
			if (FUNC5(optarg, &end_addr)) {
				FUNC0("%s is invalid '%s'",
				    "end address", optarg);
				goto out;
			}
			break;
		case 'f':
			force = 1;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'h':
			FUNC7(EXIT_SUCCESS);
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'm':
			model = optarg;
			break;
		case 'M':
			magic = optarg;
			break;
		case 'n':
			mtd_name = optarg;
			break;
		case 's':
			if (FUNC5(optarg, &start_addr)) {
				FUNC0("%s is invalid '%s'",
				    "start address", optarg);
				goto out;
			}
			break;
		case 't':
			if (FUNC6(optarg, &image_type)) {
				FUNC0("%s is invalid '%s'",
				    "image type", optarg);
				goto out;
			}
			break;
		case 'v':
			fw_version = optarg;
			break;
		default:
			FUNC7(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC3();
	if (ret)
		goto out;

	ret = FUNC2();

out:
	return ret;
}