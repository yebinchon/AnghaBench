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
struct TYPE_11__ {double Pos; double A; int /*<<< orphan*/  B; int /*<<< orphan*/  G; int /*<<< orphan*/  R; } ;
typedef  TYPE_2__ uiDrawBrushGradientStop ;
struct TYPE_12__ {int X0; int Y0; int X1; int Y1; int OuterRadius; int NumStops; TYPE_2__* Stops; int /*<<< orphan*/  Type; } ;
typedef  TYPE_3__ uiDrawBrush ;
struct TYPE_13__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_4__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  d2dBlack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d2dForestGreen ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  d2dYellow ; 
 int /*<<< orphan*/  uiDrawBrushTypeRadialGradient ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int uiPi ; 

__attribute__((used)) static void FUNC12(uiAreaDrawParams *p)
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

	// leave some room
	FUNC4(&m);
	FUNC5(&m, 25, 25);
	FUNC11(p->Context, &m);

	gradient.Type = uiDrawBrushTypeRadialGradient;
	gradient.X0 = 75;
	gradient.Y0 = 75;
	gradient.X1 = 75;
	gradient.Y1 = 75;
	gradient.OuterRadius = 75;
	stops[0].Pos = 0.0;
	FUNC0(d2dYellow, &(stops[0].R), &(stops[0].G), &(stops[0].B));
	stops[0].A = 1.0;
	stops[1].Pos = 1.0;
	FUNC0(d2dForestGreen, &(stops[1].R), &(stops[1].G), &(stops[1].B));
	stops[1].A = 1.0;
	gradient.Stops = stops;
	gradient.NumStops = 2;

	FUNC1(&black, d2dBlack, 1.0);

	path = FUNC6(uiDrawFillModeWinding);
	FUNC9(path, 150, 75);
	FUNC7(path,
		75, 75,
		75,
		0,
		2 * uiPi,
		0);
	FUNC8(path);

	FUNC2(p->Context, path, &gradient);
	sp.Thickness = 1.0;
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	FUNC10(p->Context, path, &black, &sp);

	FUNC3(path);
}