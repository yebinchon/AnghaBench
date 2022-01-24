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
struct hash_type {int dummy; } ;

/* Variables and functions */
 struct hash_type* FUNC0 (char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int FUNC2 (struct hash_type*,char*,int) ; 
 scalar_t__ optind ; 
 int FUNC3 (char const*) ; 

int FUNC4(int argc, char **argv)
{
	struct hash_type *t;
	const char *progname = argv[0];
	int i, ch;
	bool add_filename = false;

	while ((ch = FUNC1(argc, argv, "n")) != -1) {
		switch (ch) {
		case 'n':
			add_filename = true;
			break;
		default:
			return FUNC3(progname);
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1)
		return FUNC3(progname);

	t = FUNC0(argv[0]);
	if (!t)
		return FUNC3(progname);

	if (argc < 2)
		return FUNC2(t, NULL, add_filename);

	for (i = 0; i < argc - 1; i++)
		FUNC2(t, argv[1 + i], add_filename);

	return 0;
}