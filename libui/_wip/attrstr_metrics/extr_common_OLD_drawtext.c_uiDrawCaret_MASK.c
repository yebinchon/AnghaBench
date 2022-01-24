#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Height; scalar_t__ Y; } ;
typedef  TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawContext ;
struct TYPE_6__ {int /*<<< orphan*/  A; int /*<<< orphan*/  B; int /*<<< orphan*/  G; int /*<<< orphan*/  R; int /*<<< orphan*/  Type; } ;
typedef  TYPE_2__ uiDrawBrush ;
struct caretDrawParams {double xoff; int /*<<< orphan*/  a; int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct caretDrawParams*) ; 
 int /*<<< orphan*/  uiDrawBrushTypeSolid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 double FUNC8 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(uiDrawContext *c, double x, double y, uiDrawTextLayout *layout, size_t pos, int *line)
{
	double xoff;
	uiDrawTextLayoutLineMetrics m;
	struct caretDrawParams cdp;
	uiDrawPath *path;
	uiDrawBrush brush;

	if (*line < 0)
		*line = 0;
	if (*line > (FUNC11(layout) - 1))
		*line = (FUNC11(layout) - 1);
	// TODO cap pos
	xoff = FUNC8(layout, pos, *line);
	while (xoff < 0) {
		size_t start, end;

		FUNC9(layout, *line, &start, &end);
		if (end < pos)		// too far up
			(*line)++;
		else
			(*line)--;
		xoff = FUNC8(layout, pos, *line);
	}
	FUNC10(layout, *line, &m);

	FUNC0(c, m.Height, &cdp);

	FUNC7(c);

	path = FUNC3(uiDrawFillModeWinding);
	FUNC4(path,
		// TODO add m.X?
		x + xoff - cdp.xoff, y + m.Y,
		cdp.width, m.Height);
	FUNC5(path);
	brush.Type = uiDrawBrushTypeSolid;
	brush.R = cdp.r;
	brush.G = cdp.g;
	brush.B = cdp.b;
	brush.A = cdp.a;
	FUNC1(c, path, &brush);
	FUNC2(path);

	FUNC6(c);
}