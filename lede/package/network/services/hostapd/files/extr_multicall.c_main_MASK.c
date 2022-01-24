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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (int,char**) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int,char**) ; 

int FUNC4(int argc, char **argv)
{
	bool restart = false;
	const char *prog = argv[0];

restart:
	if (FUNC2(argv[0], "hostapd"))
		return FUNC1(argc, argv);
	else if (FUNC2(argv[0], "wpa_supplicant"))
		return FUNC3(argc, argv);

	if (!restart && argc > 1) {
		argv++;
		argc--;
		restart = true;
		goto restart;
	}

	FUNC0(stderr, "Invalid command.\nUsage: %s wpa_supplicant|hostapd [<arguments>]\n", prog);
	return 255;
}