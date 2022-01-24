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
typedef  int /*<<< orphan*/  uiButton ;
typedef  int /*<<< orphan*/  uiBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(uiButton *bb, void *data)
{
	uiWindow *w;
	uiBox *b;

	w = FUNC8("Another Window", 100, 100, data != NULL);
	if (data != NULL) {
		b = FUNC7();
		FUNC1(b, FUNC3(FUNC6()), 0);
		FUNC1(b, FUNC3(FUNC5("Button")), 0);
		FUNC2(b, 1);
		FUNC9(w, FUNC3(b));
	} else
		FUNC9(w, FUNC3(FUNC0()));
	FUNC10(w, 1);
	FUNC4(FUNC3(w));
}