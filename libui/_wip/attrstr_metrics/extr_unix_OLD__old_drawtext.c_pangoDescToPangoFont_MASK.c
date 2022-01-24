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
typedef  int /*<<< orphan*/  PangoFontDescription ;
typedef  int /*<<< orphan*/  PangoFont ;
typedef  int /*<<< orphan*/  PangoContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PangoFont *FUNC5(PangoFontDescription *pdesc)
{
	PangoFont *f;
	PangoContext *context;

	// in this case, the context is necessary for the metrics to be correct
	context = FUNC2();
	f = FUNC4(FUNC3(), context, pdesc);
	if (f == NULL) {
		// LONGTERM
		FUNC0("[libui] no match in pangoDescToPangoFont(); report to andlabs");
	}
	FUNC1(context);
	return f;
}