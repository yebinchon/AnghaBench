#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int Thickness; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawMatrix ;
struct TYPE_11__ {double R; double G; double B; double A; int /*<<< orphan*/  Type; } ;
typedef  TYPE_2__ uiDrawBrush ;
typedef  int /*<<< orphan*/  uiAreaHandler ;
struct TYPE_12__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  AreaHeight; int /*<<< orphan*/  AreaWidth; } ;
typedef  TYPE_3__ uiAreaDrawParams ;
typedef  int /*<<< orphan*/  uiArea ;

/* Variables and functions */
 int /*<<< orphan*/  colorBlack ; 
 int /*<<< orphan*/  colorButton ; 
 int /*<<< orphan*/  colorWhite ; 
 int /*<<< orphan*/ * FUNC0 (double,double,int) ; 
 int currentPoint ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (double,double,double*,double*) ; 
 int /*<<< orphan*/  pointRadius ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,double*,double*,double*,double*) ; 
 int /*<<< orphan*/  uiDrawBrushTypeSolid ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ xoffLeft ; 
 scalar_t__ yoffTop ; 

__attribute__((used)) static void FUNC18(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawBrush brush;
	uiDrawStrokeParams sp;
	uiDrawMatrix m;
	double graphWidth, graphHeight;
	double graphR, graphG, graphB, graphA;

	// fill the area with white
	FUNC4(&brush, colorWhite, 1.0);
	path = FUNC10(uiDrawFillModeWinding);
	FUNC11(path, 0, 0, p->AreaWidth, p->AreaHeight);
	FUNC12(path);
	FUNC6(p->Context, path, &brush);
	FUNC7(path);

	// figure out dimensions
	FUNC1(p->AreaWidth, p->AreaHeight, &graphWidth, &graphHeight);

	// clear sp to avoid passing garbage to uiDrawStroke()
	// for example, we don't use dashing
	FUNC2(&sp, 0, sizeof (uiDrawStrokeParams));

	// make a stroke for both the axes and the histogram line
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.Thickness = 2;
	sp.MiterLimit = uiDrawDefaultMiterLimit;

	// draw the axes
	FUNC4(&brush, colorBlack, 1.0);
	path = FUNC10(uiDrawFillModeWinding);
	FUNC14(path,
		xoffLeft, yoffTop);
	FUNC13(path,
		xoffLeft, yoffTop + graphHeight);
	FUNC13(path,
		xoffLeft + graphWidth, yoffTop + graphHeight);
	FUNC12(path);
	FUNC16(p->Context, path, &brush, &sp);
	FUNC7(path);

	// now transform the coordinate space so (0, 0) is the top-left corner of the graph
	FUNC8(&m);
	FUNC9(&m, xoffLeft, yoffTop);
	FUNC17(p->Context, &m);

	// now get the color for the graph itself and set up the brush
	FUNC5(colorButton, &graphR, &graphG, &graphB, &graphA);
	brush.Type = uiDrawBrushTypeSolid;
	brush.R = graphR;
	brush.G = graphG;
	brush.B = graphB;
	// we set brush->A below to different values for the fill and stroke

	// now create the fill for the graph below the graph line
	path = FUNC0(graphWidth, graphHeight, 1);
	brush.A = graphA / 2;
	FUNC6(p->Context, path, &brush);
	FUNC7(path);

	// now draw the histogram line
	path = FUNC0(graphWidth, graphHeight, 0);
	brush.A = graphA;
	FUNC16(p->Context, path, &brush, &sp);
	FUNC7(path);

	// now draw the point being hovered over
	if (currentPoint != -1) {
		double xs[10], ys[10];

		FUNC3(graphWidth, graphHeight, xs, ys);
		path = FUNC10(uiDrawFillModeWinding);
		FUNC15(path,
			xs[currentPoint], ys[currentPoint],
			pointRadius,
			0, 6.23,		// TODO pi
			0);
		FUNC12(path);
		// use the same brush as for the histogram lines
		FUNC6(p->Context, path, &brush);
		FUNC7(path);
	}
}