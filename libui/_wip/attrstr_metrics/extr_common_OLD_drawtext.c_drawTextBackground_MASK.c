#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Height; scalar_t__ Y; } ;
typedef  TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawContext ;
typedef  int /*<<< orphan*/  uiDrawBrush ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,scalar_t__,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(uiDrawContext *c, double x, double y, uiDrawTextLayout *layout, size_t start, size_t end, uiDrawBrush *brush, int isSelection)
{
	int line, nLines;
	size_t lstart, lend;
	double layoutwid, layoutht;

	FUNC6(layout, &layoutwid, &layoutht);
	nLines = FUNC9(layout);
	for (line = 0; line < nLines; line++) {
		FUNC7(layout, line, &lstart, &lend);
		if (start >= lstart && start < lend)
			break;
	}
	while (end - start > 0) {
		uiDrawTextLayoutLineMetrics m;
		double startx, endx;
		uiDrawPath *path;

		FUNC7(layout, line, &lstart, &lend);
		if (lend > end)		// don't cross lines
			lend = end;
		startx = FUNC5(layout, start, line);
		// TODO explain this; note the use of start with lend
		endx = layoutwid;
		if (!isSelection || end <= lend)
			endx = FUNC5(layout, lend, line);
		FUNC8(layout, line, &m);
		path = FUNC2(uiDrawFillModeWinding);
		FUNC3(path,
			x + startx, y + m.Y,
			endx - startx, m.Height);
		FUNC4(path);
		FUNC0(c, path, brush);
		FUNC1(path);
		line++;
		start = lend;
	}
}