#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int Thickness; void* MiterLimit; void* Join; void* Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
struct TYPE_9__ {int A; int R; double G; double B; int /*<<< orphan*/  Type; } ;
typedef  TYPE_2__ uiDrawBrush ;
struct TYPE_10__ {int ClipX; int ClipY; int ClipWidth; int ClipHeight; int /*<<< orphan*/  Context; } ;
typedef  TYPE_3__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  uiDrawBrushTypeSolid ; 
 void* uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* uiDrawLineCapFlat ; 
 void* uiDrawLineJoinMiter ; 
 void* uiDrawLineJoinRound ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int uiPi ; 

__attribute__((used)) static void FUNC12(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawBrush brush;
	uiDrawStrokeParams sp;

	sp.Dashes = NULL;
	sp.NumDashes = 0;
	sp.DashPhase = 0;

	brush.Type = uiDrawBrushTypeSolid;
	brush.A = 1;

	brush.R = 1;
	brush.G = 0;
	brush.B = 0;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC9(path, p->ClipX + 5, p->ClipY + 5);
	FUNC8(path, (p->ClipX + p->ClipWidth) - 5, (p->ClipY + p->ClipHeight) - 5);
	FUNC7(path);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.Thickness = 1;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	FUNC11(p->Context, path, &brush, &sp);
	FUNC1(path);

	brush.R = 0;
	brush.G = 0;
	brush.B = 0.75;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC9(path, p->ClipX, p->ClipY);
	FUNC8(path, p->ClipX + p->ClipWidth, p->ClipY);
	FUNC8(path, 50, 150);
	FUNC8(path, 50, 50);
	FUNC6(path);
	FUNC7(path);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinRound;
	sp.Thickness = 5;
	FUNC11(p->Context, path, &brush, &sp);
	FUNC1(path);

	brush.R = 0;
	brush.G = 0.75;
	brush.B = 0;
	brush.A = 0.5;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC3(path, 120, 80, 50, 50);
	FUNC7(path);
	FUNC0(p->Context, path, &brush);
	FUNC1(path);
	brush.A = 1;

	brush.R = 0;
	brush.G = 0.5;
	brush.B = 0;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC9(path, 5.5, 10.5);
	FUNC8(path, 5.5, 50.5);
	FUNC7(path);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.Thickness = 1;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	FUNC11(p->Context, path, &brush, &sp);
	FUNC1(path);

	brush.R = 0.5;
	brush.G = 0.75;
	brush.B = 0;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC9(path, 400, 100);
	FUNC4(path,
		400, 100,
		50,
		30. * (uiPi / 180.),
		300. * (uiPi / 180.),
		0);
	// the sweep test below doubles as a clockwise test so a checkbox isn't needed anymore
	FUNC8(path, 400, 100);
	FUNC10(path,
		510, 100,
		50,
		30. * (uiPi / 180.),
		300. * (uiPi / 180.),
		0);
	FUNC6(path);
	// and now with 330 to make sure sweeps work properly
	FUNC9(path, 400, 210);
	FUNC4(path,
		400, 210,
		50,
		30. * (uiPi / 180.),
		330. * (uiPi / 180.),
		0);
	FUNC8(path, 400, 210);
	FUNC10(path,
		510, 210,
		50,
		30. * (uiPi / 180.),
		330. * (uiPi / 180.),
		0);
	FUNC6(path);
	FUNC7(path);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.Thickness = 1;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	FUNC11(p->Context, path, &brush, &sp);
	FUNC1(path);

	brush.R = 0;
	brush.G = 0.5;
	brush.B = 0.75;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC9(path, 300, 300);
	FUNC5(path,
		350, 320,
		310, 390,
		435, 372);
	FUNC7(path);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.Thickness = 1;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	FUNC11(p->Context, path, &brush, &sp);
	FUNC1(path);
}