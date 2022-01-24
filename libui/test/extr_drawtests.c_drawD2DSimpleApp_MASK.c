#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double Thickness; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_7__ {int AreaWidth; int AreaHeight; int /*<<< orphan*/  Context; } ;
typedef  TYPE_2__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  d2dCornflowerBlue ; 
 int /*<<< orphan*/  d2dLightSlateGray ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  d2dWhite ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawBrush lightSlateGray;
	uiDrawBrush cornflowerBlue;
	uiDrawStrokeParams sp;
	int x, y;

	sp.Dashes = NULL;
	sp.NumDashes = 0;
	sp.DashPhase = 0;

	FUNC1(&lightSlateGray, d2dLightSlateGray, 1.0);
	FUNC1(&cornflowerBlue, d2dCornflowerBlue, 1.0);

	FUNC0(p, d2dWhite, 1.0);

	sp.Thickness = 0.5;
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;

	for (x = 0; x < p->AreaWidth; x += 10) {
		path = FUNC4(uiDrawFillModeWinding);
		FUNC8(path, x, 0);
		FUNC7(path, x, p->AreaHeight);
		FUNC6(path);
		FUNC9(p->Context, path, &lightSlateGray, &sp);
		FUNC3(path);
	}

	for (y = 0; y < p->AreaHeight; y += 10) {
		path = FUNC4(uiDrawFillModeWinding);
		FUNC8(path, 0, y);
		FUNC7(path, p->AreaWidth, y);
		FUNC6(path);
		FUNC9(p->Context, path, &lightSlateGray, &sp);
		FUNC3(path);
	}

	double left, top, right, bottom;

	left = p->AreaWidth / 2.0 - 50.0;
	right = p->AreaWidth / 2.0 + 50.0;
	top = p->AreaHeight / 2.0 - 50.0;
	bottom = p->AreaHeight / 2.0 + 50.0;
	path = FUNC4(uiDrawFillModeWinding);
	FUNC5(path, left, top, right - left, bottom - top);
	FUNC6(path);
	FUNC2(p->Context, path, &lightSlateGray);
	FUNC3(path);

	left = p->AreaWidth / 2.0 - 100.0;
	right = p->AreaWidth / 2.0 + 100.0;
	top = p->AreaHeight / 2.0 - 100.0;
	bottom = p->AreaHeight / 2.0 + 100.0;
	path = FUNC4(uiDrawFillModeWinding);
	FUNC5(path, left, top, right - left, bottom - top);
	FUNC6(path);
	sp.Thickness = 1.0;
	FUNC9(p->Context, path, &cornflowerBlue, &sp);
	FUNC3(path);
}