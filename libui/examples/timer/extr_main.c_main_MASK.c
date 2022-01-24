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
typedef  int /*<<< orphan*/  uiInitOptions ;
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * e ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  onClosing ; 
 int /*<<< orphan*/  saySomething ; 
 int /*<<< orphan*/  sayTime ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 

int FUNC18(void)
{
	uiInitOptions o;
	uiWindow *w;
	uiBox *b;
	uiButton *btn;

	FUNC1(&o, 0, sizeof (uiInitOptions));
	if (FUNC7(&o) != NULL)
		FUNC0();

	w = FUNC13("Hello", 320, 240, 0);
	FUNC17(w, 1);

	b = FUNC12();
	FUNC3(b, 1);
	FUNC16(w, FUNC5(b));

	e = FUNC11();
	FUNC9(e, 1);

	btn = FUNC10("Say Something");
	FUNC4(btn, saySomething, NULL);
	FUNC2(b, FUNC5(btn), 0);

	FUNC2(b, FUNC5(e), 1);

	FUNC14(1000, sayTime, NULL);

	FUNC15(w, onClosing, NULL);
	FUNC6(FUNC5(w));
	FUNC8();
	return 0;
}