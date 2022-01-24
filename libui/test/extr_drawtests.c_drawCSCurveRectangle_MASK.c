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
struct TYPE_5__ {double Thickness; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_6__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_2__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double,int,double) ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,double,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(uiAreaDrawParams *p)
{
	double x0      = 25.6,   /* parameters like cairo_rectangle */
		y0      = 25.6,
		rect_width  = 204.8,
		rect_height = 204.8,
		radius = 102.4;   /* and an approximate curvature radius */

	double x1,y1;

	uiDrawBrush source;
	uiDrawStrokeParams sp;
	uiDrawPath *path;

	FUNC0(&source, 0, 0, 0, 1);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	sp.Dashes = NULL;
	sp.NumDashes = 0;
	sp.DashPhase = 0;

	path = FUNC3(uiDrawFillModeWinding);

	x1=x0+rect_width;
	y1=y0+rect_height;
	if (!rect_width || !rect_height)
		return;
	if (rect_width/2 < radius) {
		if (rect_height/2<radius) {
			FUNC8(path, x0, (y0 + y1)/2);
			FUNC4(path, x0 ,y0, x0, y0, (x0 + x1)/2, y0);
			FUNC4(path, x1, y0, x1, y0, x1, (y0 + y1)/2);
			FUNC4(path, x1, y1, x1, y1, (x1 + x0)/2, y1);
			FUNC4(path, x0, y1, x0, y1, x0, (y0 + y1)/2);
		} else {
			FUNC8(path, x0, y0 + radius);
			FUNC4(path, x0 ,y0, x0, y0, (x0 + x1)/2, y0);
			FUNC4(path, x1, y0, x1, y0, x1, y0 + radius);
			FUNC7(path, x1 , y1 - radius);
			FUNC4(path, x1, y1, x1, y1, (x1 + x0)/2, y1);
			FUNC4(path, x0, y1, x0, y1, x0, y1- radius);
		}
	} else {
		if (rect_height / 2 < radius) {
			FUNC8(path, x0, (y0 + y1)/2);
			FUNC4(path, x0 , y0, x0 , y0, x0 + radius, y0);
			FUNC7(path, x1 - radius, y0);
			FUNC4(path, x1, y0, x1, y0, x1, (y0 + y1)/2);
			FUNC4(path, x1, y1, x1, y1, x1 - radius, y1);
			FUNC7(path, x0 + radius, y1);
			FUNC4(path, x0, y1, x0, y1, x0, (y0 + y1)/2);
		} else {
			FUNC8(path, x0, y0 + radius);
			FUNC4(path, x0 , y0, x0 , y0, x0 + radius, y0);
			FUNC7(path, x1 - radius, y0);
			FUNC4(path, x1, y0, x1, y0, x1, y0 + radius);
			FUNC7(path, x1 , y1 - radius);
			FUNC4(path, x1, y1, x1, y1, x1 - radius, y1);
			FUNC7(path, x0 + radius, y1);
			FUNC4(path, x0, y1, x0, y1, x0, y1- radius);
		}
	}
	FUNC5(path);
	FUNC6(path);

	FUNC0(&source, 0.5, 0.5, 1, 1.0);
	FUNC1(p->Context, path, &source);
	FUNC0(&source, 0.5, 0, 0, 0.5);
	sp.Thickness = 10.0;
	FUNC9(p->Context, path, &source, &sp);

	FUNC2(path);
}