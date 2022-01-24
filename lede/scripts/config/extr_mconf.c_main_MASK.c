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
 int KEY_ESC ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * conf_message_callback ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sig_handler ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int silent ; 
 int single_menu_mode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(int ac, char **av)
{
	char *mode;
	int res;

	FUNC12(LC_ALL, "");
	FUNC1(PACKAGE, LOCALEDIR);
	FUNC16(PACKAGE);

	FUNC13(SIGINT, sig_handler);

	if (ac > 1 && FUNC15(av[1], "-s") == 0) {
		silent = 1;
		/* Silence conf_read() until the real callback is set up */
		FUNC6(NULL);
		av++;
	}
	FUNC4(av[1]);
	FUNC5(NULL);

	mode = FUNC8("MENUCONFIG_MODE");
	if (mode) {
		if (!FUNC14(mode, "single_menu"))
			single_menu_mode = 1;
	}

	if (FUNC10(NULL)) {
		FUNC7(stderr, "%s", FUNC0("Your display is too small to run Menuconfig!\n"));
		FUNC7(stderr, "%s", FUNC0("It must be at least 19 lines by 80 columns.\n"));
		return 1;
	}

	FUNC11(FUNC3());
	FUNC6(conf_message_callback);
	do {
		FUNC2(&rootmenu, NULL);
		res = FUNC9();
	} while (res == KEY_ESC);

	return res;
}