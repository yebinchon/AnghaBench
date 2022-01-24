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
struct TYPE_5__ {double Thickness; void* MiterLimit; void* Join; void* Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawMatrix ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_6__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_2__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  d2dBlack ; 
 int /*<<< orphan*/  d2dForestGreen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  d2dWhite ; 
 void* uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* uiDrawLineCapFlat ; 
 void* uiDrawLineJoinMiter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int uiPi ; 

__attribute__((used)) static void FUNC13(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawBrush original;
	uiDrawBrush fill;
	uiDrawBrush transform;
	uiDrawStrokeParams originalsp;
	uiDrawStrokeParams transformsp;
	uiDrawMatrix mtranslate;
	uiDrawMatrix mrotate;

	originalsp.Dashes = NULL;
	originalsp.NumDashes = 0;
	originalsp.DashPhase = 0;
	transformsp.Dashes = NULL;
	transformsp.NumDashes = 0;
	transformsp.DashPhase = 0;

	path = FUNC6(uiDrawFillModeWinding);
	FUNC7(path, 300.0, 40.0, 360.0 - 300.0, 100.0 - 40.0);
	FUNC8(path);

	// TODO the example doesn't specify what these should be
	FUNC0(&original, d2dBlack, 1.0);
	FUNC0(&fill, d2dWhite, 0.5);
	FUNC0(&transform, d2dForestGreen, 1.0);
	// TODO this needs to be dashed
	originalsp.Thickness = 1.0;
	originalsp.Cap = uiDrawLineCapFlat;
	originalsp.Join = uiDrawLineJoinMiter;
	originalsp.MiterLimit = uiDrawDefaultMiterLimit;
	transformsp.Thickness = 1.0;
	transformsp.Cap = uiDrawLineCapFlat;
	transformsp.Join = uiDrawLineJoinMiter;
	transformsp.MiterLimit = uiDrawDefaultMiterLimit;

	FUNC4(&mtranslate);
	FUNC5(&mtranslate, 20.0, 10.0);
	FUNC4(&mrotate);
	FUNC3(&mrotate,
		330.0, 70.0,
		45.0 * (uiPi / 180));

	// save for when we do the opposite one
	FUNC10(p->Context);

	FUNC11(p->Context, path, &original, &originalsp);

	FUNC12(p->Context, &mrotate);
	FUNC12(p->Context, &mtranslate);

	FUNC1(p->Context, path, &fill);
	FUNC11(p->Context, path, &transform, &transformsp);

	FUNC9(p->Context);
	FUNC2(path);

	path = FUNC6(uiDrawFillModeWinding);
	FUNC7(path, 40.0, 40.0, 100.0 - 40.0, 100.0 - 40.0);
	FUNC8(path);

	FUNC4(&mtranslate);
	FUNC5(&mtranslate, 20.0, 10.0);
	FUNC4(&mrotate);
	FUNC3(&mrotate,
		70.0, 70.0,
		45.0 * (uiPi / 180));

	FUNC11(p->Context, path, &original, &originalsp);

	FUNC12(p->Context, &mtranslate);
	FUNC12(p->Context, &mrotate);

	FUNC1(p->Context, path, &fill);
	FUNC11(p->Context, path, &transform, &transformsp);

	FUNC2(path);
}