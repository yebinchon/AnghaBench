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
typedef  int uint32_t ;
struct TYPE_2__ {char type; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int active ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ heads ; 
 int kb_align ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 TYPE_1__* parts ; 
 scalar_t__ sectors ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC7 (int argc, char **argv)
{
	char type = 0x83;
	int ch;
	int part = 0;
	uint32_t signature = 0x5452574F; /* 'OWRT' */

	while ((ch = FUNC3(argc, argv, "h:s:p:a:t:o:vl:S:")) != -1) {
		switch (ch) {
		case 'o':
			filename = optarg;
			break;
		case 'v':
			verbose++;
			break;
		case 'h':
			heads = (int)FUNC4(optarg, NULL, 0);
			break;
		case 's':
			sectors = (int)FUNC4(optarg, NULL, 0);
			break;
		case 'p':
			if (part > 3) {
				FUNC1(stderr, "Too many partitions\n");
				FUNC0(EXIT_FAILURE);
			}
			parts[part].size = FUNC5(optarg);
			parts[part++].type = type;
			break;
		case 't':
			type = (char)FUNC4(optarg, NULL, 16);
			break;
		case 'a':
			active = (int)FUNC4(optarg, NULL, 0);
			if ((active < 0) || (active > 4))
				active = 0;
			break;
		case 'l':
			kb_align = (int)FUNC4(optarg, NULL, 0) * 2;
			break;
		case 'S':
			signature = FUNC4(optarg, NULL, 0);
			break;
		case '?':
		default:
			FUNC6(argv[0]);
		}
	}
	argc -= optind;
	if (argc || (heads <= 0) || (sectors <= 0) || !filename)
		FUNC6(argv[0]);

	return FUNC2(signature, part) ? EXIT_FAILURE : EXIT_SUCCESS;
}