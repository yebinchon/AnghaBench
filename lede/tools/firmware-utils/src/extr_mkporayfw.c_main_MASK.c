#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* file_name; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* board_id ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int extract ; 
 TYPE_1__ firmware_info ; 
 int FUNC3 (int,char**,char*) ; 
 int inspect ; 
 int FUNC4 () ; 
 void* layout_id ; 
 void* ofname ; 
 void* opt_hw_id ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;

	progname = FUNC0(argv[0]);

	int c;

	while ((c = FUNC3(argc, argv, "B:H:F:f:o:ixh")) != -1) {
		switch (c) {
		case 'B':
			board_id = optarg;
			break;
		case 'H':
			opt_hw_id = optarg;
			break;
		case 'F':
			layout_id = optarg;
			break;
		case 'f':
			firmware_info.file_name = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'i':
			inspect = 1;
			break;
		case 'x':
			inspect = 1;
			extract = 1;
			break;
		case 'h':
			FUNC5(EXIT_SUCCESS);
			break;
		default:
			FUNC5(EXIT_FAILURE);
			break;
		}
	}

	ret = FUNC2();
	if (ret) {
		goto out;
	}
	if (!inspect) {
		ret = FUNC1();
	} else {
		ret = FUNC4();
	}

 out:
	return ret;
}