#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {double Thickness; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
struct TYPE_12__ {double Pos; double A; int /*<<< orphan*/  B; int /*<<< orphan*/  G; int /*<<< orphan*/  R; } ;
typedef  TYPE_2__ uiDrawBrushGradientStop ;
struct TYPE_13__ {int X0; int Y0; int X1; int Y1; int OuterRadius; int NumStops; TYPE_2__* Stops; int /*<<< orphan*/  Type; } ;
typedef  TYPE_3__ uiDrawBrush ;
struct TYPE_14__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_4__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  d2dBlack ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  d2dForestGreen ; 
 int /*<<< orphan*/  d2dLightSkyBlue ; 
 int /*<<< orphan*/  d2dOliveDrab ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  d2dWhite ; 
 int /*<<< orphan*/  d2dYellow ; 
 int /*<<< orphan*/  d2dYellowGreen ; 
 int /*<<< orphan*/  uiDrawBrushTypeRadialGradient ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,double,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  uiPi ; 

__attribute__((used)) static void FUNC13(uiAreaDrawParams *p)
{
	uiDrawPath *leftMountain;
	uiDrawPath *rightMountain;
	uiDrawPath *sun;
	uiDrawPath *sunRays;
	uiDrawPath *river;
	uiDrawBrush radial;
	uiDrawBrush scene;
	uiDrawStrokeParams sp;
	uiDrawBrushGradientStop stops[2];

	sp.Dashes = NULL;
	sp.NumDashes = 0;
	sp.DashPhase = 0;

	// TODO this is definitely wrong but the example doesn't have the right brush in it
	radial.Type = uiDrawBrushTypeRadialGradient;
	radial.X0 = 75;
	radial.Y0 = 75;
	radial.X1 = 75;
	radial.Y1 = 75;
	radial.OuterRadius = 75;
	stops[0].Pos = 0.0;
	FUNC1(d2dYellow, &(stops[0].R), &(stops[0].G), &(stops[0].B));
	stops[0].A = 1.0;
	stops[1].Pos = 1.0;
	FUNC1(d2dForestGreen, &(stops[1].R), &(stops[1].G), &(stops[1].B));
	stops[1].A = 1.0;
	radial.Stops = stops;
	radial.NumStops = 2;

	leftMountain = FUNC5(uiDrawFillModeWinding);
	FUNC10(leftMountain, 346, 255);
	FUNC9(leftMountain, 267, 177);
	FUNC9(leftMountain, 236, 192);
	FUNC9(leftMountain, 212, 160);
	FUNC9(leftMountain, 156, 255);
	FUNC9(leftMountain, 346, 255);
	FUNC7(leftMountain);
	FUNC8(leftMountain);

	rightMountain = FUNC5(uiDrawFillModeWinding);
	FUNC10(rightMountain, 575, 263);
	FUNC9(rightMountain, 481, 146);
	FUNC9(rightMountain, 449, 181);
	FUNC9(rightMountain, 433, 159);
	FUNC9(rightMountain, 401, 214);
	FUNC9(rightMountain, 381, 199);
	FUNC9(rightMountain, 323, 263);
	FUNC9(rightMountain, 575, 263);
	FUNC7(rightMountain);
	FUNC8(rightMountain);

	sun = FUNC5(uiDrawFillModeWinding);
	FUNC11(sun,
		(440.0 - 270.0) / 2 + 270.0, 255,
		85,
		uiPi, uiPi,
		0);
	FUNC7(sun);
	FUNC8(sun);

	// the original examples had these as hollow figures
	// we don't support them, so we'll have to stroke it separately
	sunRays = FUNC5(uiDrawFillModeWinding);
	FUNC10(sunRays, 299, 182);
	FUNC6(sunRays,
		299, 182,
		294, 176,
		285, 178);
	FUNC6(sunRays,
		276, 179,
		272, 173,
		272, 173);
	FUNC10(sunRays, 354, 156);
	FUNC6(sunRays,
		354, 156,
		358, 149,
		354, 142);
	FUNC6(sunRays,
		349, 134,
		354, 127,
		354, 127);
	FUNC10(sunRays, 322, 164);
	FUNC6(sunRays,
		322, 164,
		322, 156,
		314, 152);
	FUNC6(sunRays,
		306, 149,
		305, 141,
		305, 141);
	FUNC10(sunRays, 385, 164);
	FUNC6(sunRays,
		385, 164,
		392, 161,
		394, 152);
	FUNC6(sunRays,
		395, 144,
		402, 141,
		402, 142);
	FUNC10(sunRays, 408, 182);
	FUNC6(sunRays,
		408, 182,
		416, 184,
		422, 178);
	FUNC6(sunRays,
		428, 171,
		435, 173,
		435, 173);
	FUNC8(sunRays);

	river = FUNC5(uiDrawFillModeWinding);
	FUNC10(river, 183, 392);
	FUNC6(river,
		238, 284,
		472, 345,
		356, 303);
	FUNC6(river,
		237, 261,
		333, 256,
		333, 256);
	FUNC6(river,
		335, 257,
		241, 261,
		411, 306);
	FUNC6(river,
		574, 350,
		288, 324,
		296, 392);
	FUNC8(river);

	FUNC0(p, d2dWhite, 1.0);

	// TODO draw the grid

	FUNC3(p->Context, sun, &radial);

	FUNC2(&scene, d2dBlack, 1.0);
	sp.Thickness = 1.0;
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	FUNC12(p->Context, sun, &scene, &sp);
	FUNC12(p->Context, sunRays, &scene, &sp);

	FUNC2(&scene, d2dOliveDrab, 1.0);
	FUNC3(p->Context, leftMountain, &scene);

	FUNC2(&scene, d2dBlack, 1.0);
	FUNC12(p->Context, leftMountain, &scene, &sp);

	FUNC2(&scene, d2dLightSkyBlue, 1.0);
	FUNC3(p->Context, river, &scene);

	FUNC2(&scene, d2dBlack, 1.0);
	FUNC12(p->Context, river, &scene, &sp);

	FUNC2(&scene, d2dYellowGreen, 1.0);
	FUNC3(p->Context, rightMountain, &scene);

	FUNC2(&scene, d2dBlack, 1.0);
	FUNC12(p->Context, rightMountain, &scene, &sp);

	FUNC4(leftMountain);
	FUNC4(rightMountain);
	FUNC4(sun);
	FUNC4(sunRays);
	FUNC4(river);
}