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
typedef  int /*<<< orphan*/  uiWindow ;
typedef  int /*<<< orphan*/  uiLabel ;
typedef  int /*<<< orphan*/  uiInitOptions ;
typedef  int /*<<< orphan*/  uiGrid ;
typedef  int /*<<< orphan*/  uiButton ;

/* Variables and functions */
 int /*<<< orphan*/ * dtboth ; 
 int /*<<< orphan*/ * dtdate ; 
 int /*<<< orphan*/ * dttime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  onChanged ; 
 int /*<<< orphan*/  onClicked ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  uiAlignCenter ; 
 int /*<<< orphan*/  uiAlignEnd ; 
 int /*<<< orphan*/  uiAlignFill ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 

int FUNC21(void)
{
	uiInitOptions o;
	const char *err;
	uiWindow *w;
	uiGrid *g;
	uiLabel *l;
	uiButton *b;

	FUNC1(&o, 0, sizeof (uiInitOptions));
	err = FUNC9(&o);
	if (err != NULL) {
		FUNC0(stderr, "error initializing ui: %s\n", err);
		FUNC6(err);
		return 1;
	}

	w = FUNC17("Date / Time", 320, 240, 0);
	FUNC20(w, 1);

	g = FUNC14();
	FUNC8(g, 1);
	FUNC19(w, FUNC3(g));

	dtboth = FUNC13();
	dtdate = FUNC12();
	dttime = FUNC16();

	FUNC7(g, FUNC3(dtboth),
		0, 0, 2, 1,
		1, uiAlignFill, 0, uiAlignFill);
	FUNC7(g, FUNC3(dtdate),
		0, 1, 1, 1,
		1, uiAlignFill, 0, uiAlignFill);
	FUNC7(g, FUNC3(dttime),
		1, 1, 1, 1,
		1, uiAlignFill, 0, uiAlignFill);

	l = FUNC15("");
	FUNC7(g, FUNC3(l),
		0, 2, 2, 1,
		1, uiAlignCenter, 0, uiAlignFill);
	FUNC5(dtboth, onChanged, l);
	l = FUNC15("");
	FUNC7(g, FUNC3(l),
		0, 3, 1, 1,
		1, uiAlignCenter, 0, uiAlignFill);
	FUNC5(dtdate, onChanged, l);
	l = FUNC15("");
	FUNC7(g, FUNC3(l),
		1, 3, 1, 1,
		1, uiAlignCenter, 0, uiAlignFill);
	FUNC5(dttime, onChanged, l);

	b = FUNC11("Now");
	FUNC2(b, onClicked, (void *) 1);
	FUNC7(g, FUNC3(b),
		0, 4, 1, 1,
		1, uiAlignFill, 1, uiAlignEnd);
	b = FUNC11("Unix epoch");
	FUNC2(b, onClicked, (void *) 0);
	FUNC7(g, FUNC3(b),
		1, 4, 1, 1,
		1, uiAlignFill, 1, uiAlignEnd);

	FUNC18(w, onClosing, NULL);
	FUNC4(FUNC3(w));
	FUNC10();
	return 0;
}