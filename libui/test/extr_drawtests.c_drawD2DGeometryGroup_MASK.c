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
typedef  int /*<<< orphan*/  uiDrawMatrix ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_7__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_2__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  d2dCornflowerBlue ; 
 int /*<<< orphan*/  d2dForestGreen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  d2dWhite ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawFillModeAlternate ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int uiPi ; 

__attribute__((used)) static void FUNC11(uiAreaDrawParams *p)
{
	uiDrawPath *alternate;
	uiDrawPath *winding;
	uiDrawBrush fill;
	uiDrawBrush stroke;
	uiDrawStrokeParams sp;
	uiDrawMatrix m;

	sp.Dashes = NULL;
	sp.NumDashes = 0;
	sp.DashPhase = 0;

	alternate = FUNC6(uiDrawFillModeAlternate);
	FUNC8(alternate,
		105, 105,
		25,
		0, 2 * uiPi,
		0);
	FUNC8(alternate,
		105, 105,
		50,
		0, 2 * uiPi,
		0);
	FUNC8(alternate,
		105, 105,
		75,
		0, 2 * uiPi,
		0);
	FUNC8(alternate,
		105, 105,
		100,
		0, 2 * uiPi,
		0);
	FUNC7(alternate);

	winding = FUNC6(uiDrawFillModeWinding);
	FUNC8(winding,
		105, 105,
		25,
		0, 2 * uiPi,
		0);
	FUNC8(winding,
		105, 105,
		50,
		0, 2 * uiPi,
		0);
	FUNC8(winding,
		105, 105,
		75,
		0, 2 * uiPi,
		0);
	FUNC8(winding,
		105, 105,
		100,
		0, 2 * uiPi,
		0);
	FUNC7(winding);

	FUNC0(p, d2dWhite, 1.0);

	// TODO grid

	// TODO the example doesn't provide these
	FUNC1(&fill, d2dForestGreen, 1.0);
	FUNC1(&stroke, d2dCornflowerBlue, 1.0);

	sp.Thickness = 1.0;
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;

	FUNC2(p->Context, alternate, &fill);
	FUNC9(p->Context, alternate, &stroke, &sp);
	// TODO text

	FUNC4(&m);
	FUNC5(&m, 300, 0);
	FUNC10(p->Context, &m);
	FUNC2(p->Context, winding, &fill);
	FUNC9(p->Context, winding, &stroke, &sp);
//	// TODO text

	FUNC3(winding);
	FUNC3(alternate);
}