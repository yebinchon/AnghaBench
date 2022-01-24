#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {double Thickness; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawMatrix ;
struct TYPE_11__ {double Pos; double R; double G; double B; double A; } ;
typedef  TYPE_2__ uiDrawBrushGradientStop ;
struct TYPE_12__ {int X0; int X1; int Y1; int NumStops; TYPE_2__* Stops; scalar_t__ Y0; int /*<<< orphan*/  Type; } ;
typedef  TYPE_3__ uiDrawBrush ;
struct TYPE_13__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_4__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  d2dBlack ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  uiDrawBrushTypeLinearGradient ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawBrush black;
	uiDrawBrush gradient;
	uiDrawBrushGradientStop stops[2];
	uiDrawStrokeParams sp;
	uiDrawMatrix m;

	sp.Dashes = NULL;
	sp.NumDashes = 0;
	sp.DashPhase = 0;

	path = FUNC5(uiDrawFillModeWinding);
	FUNC10(path, 0, 0);
	FUNC9(path, 200, 0);
	FUNC6(path,
		150, 50,
		150, 150,
		200, 200);
	FUNC9(path, 0, 200);
	FUNC6(path,
		50, 150,
		50, 50,
		0, 0);
	FUNC7(path);
	FUNC8(path);

	FUNC0(&black, d2dBlack, 1.0);

	stops[0].Pos =0.0;
	stops[0].R = 0.0;
	stops[0].G = 1.0;
	stops[0].B = 1.0;
	stops[0].A = 0.25;
	stops[1].Pos = 1.0;
	stops[1].R = 0.0;
	stops[1].G = 0.0;
	stops[1].B = 1.0;
	stops[1].A = 1.0;
	gradient.Type = uiDrawBrushTypeLinearGradient;
	gradient.X0 = 100;
	gradient.Y0 = 0;
	gradient.X1 = 100;
	gradient.Y1 = 200;
	gradient.Stops = stops;
	gradient.NumStops = 2;

	FUNC3(&m);
	FUNC4(&m, 20, 20);
	FUNC12(p->Context, &m);

	sp.Thickness = 10.0;
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;

	FUNC11(p->Context, path, &black, &sp);
	FUNC1(p->Context, path, &gradient);

	FUNC2(path);
}