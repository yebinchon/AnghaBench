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
typedef  int /*<<< orphan*/  uiTab ;
typedef  int /*<<< orphan*/  uiInitOptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * mainwin ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  onShouldQuit ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 

int FUNC18(void)
{
	uiInitOptions options;
	const char *err;
	uiTab *tab;

	FUNC4(&options, 0, sizeof (uiInitOptions));
	err = FUNC8(&options);
	if (err != NULL) {
		FUNC0(stderr, "error initializing libui: %s", err);
		FUNC7(err);
		return 1;
	}

	mainwin = FUNC11("libui Control Gallery", 640, 480, 1);
	FUNC15(mainwin, onClosing, NULL);
	FUNC12(onShouldQuit, mainwin);

	tab = FUNC10();
	FUNC16(mainwin, FUNC5(tab));
	FUNC17(mainwin, 1);

	FUNC13(tab, "Basic Controls", FUNC1());
	FUNC14(tab, 0, 1);

	FUNC13(tab, "Numbers and Lists", FUNC3());
	FUNC14(tab, 1, 1);

	FUNC13(tab, "Data Choosers", FUNC2());
	FUNC14(tab, 2, 1);

	FUNC6(FUNC5(mainwin));
	FUNC9();
	return 0;
}