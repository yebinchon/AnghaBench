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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 char* input_file ; 
 int /*<<< orphan*/ * name_filter ; 
 void* optarg ; 
 int print_all_key_names ; 
 int show_all ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int swap_bytes ; 
 int /*<<< orphan*/  tffs_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int argc, char *argv[])
{
	while (1)
	{
		int c;

		c = FUNC3(argc, argv, "abhi:ln:s:");
		if (c == -1)
			break;

		switch (c) {
			case 'a':
				show_all = true;
				name_filter = NULL;
				print_all_key_names = false;
				break;
			case 'b':
				swap_bytes = 1;
				break;
			case 'h':
				FUNC5(EXIT_SUCCESS);
				break;
			case 'i':
				input_file = optarg;
				break;
			case 'l':
				print_all_key_names = true;
				show_all = false;
				name_filter = NULL;
				break;
			case 'n':
				name_filter = optarg;
				show_all = false;
				print_all_key_names = false;
				break;
			case 's':
				tffs_size = FUNC4(optarg, NULL, 0);
				break;
			default:
				FUNC5(EXIT_FAILURE);
				break;
		}
	}

	if (!input_file) {
		FUNC2(stderr, "ERROR: No input file (-i <file>) given!\n");
		FUNC0(EXIT_FAILURE);
	}

	if (!FUNC1(input_file)) {
		FUNC2(stderr, "ERROR: %s does not exist\n", input_file);
		FUNC0(EXIT_FAILURE);
	}

	if (!show_all && !name_filter && !print_all_key_names) {
		FUNC2(stderr,
			"ERROR: either -l, -a or -n <key name> is required!\n");
		FUNC0(EXIT_FAILURE);
	}
}