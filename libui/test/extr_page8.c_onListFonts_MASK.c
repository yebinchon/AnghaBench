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
typedef  int /*<<< orphan*/  uiDrawFontFamilies ;
typedef  int /*<<< orphan*/  uiButton ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(uiButton *b, void *data)
{
	uiDrawFontFamilies *ff;
	char *this;
	int i, n;

	FUNC7(FUNC5(data), "");
	ff = FUNC3();
	n = FUNC1(ff);
	for (i = 0; i < n; i++) {
		this = FUNC0(ff, i);
		FUNC6(FUNC5(data), this);
		FUNC6(FUNC5(data), "\n");
		FUNC4(this);
	}
	FUNC2(ff);
}