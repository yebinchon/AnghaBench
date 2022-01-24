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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawBrush original;
	uiDrawBrush fill;
	uiDrawBrush transform;
	uiDrawStrokeParams originalsp;
	uiDrawStrokeParams transformsp;
	uiDrawMatrix m;

	originalsp.Dashes = NULL;
	originalsp.NumDashes = 0;
	originalsp.DashPhase = 0;
	transformsp.Dashes = NULL;
	transformsp.NumDashes = 0;
	transformsp.DashPhase = 0;

	path = FUNC5(uiDrawFillModeWinding);
	FUNC6(path, 126.0, 80.5, 186.0 - 126.0, 140.5 - 80.5);
	FUNC7(path);

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

	FUNC8(p->Context, path, &original, &originalsp);

	FUNC3(&m);
	FUNC4(&m, 20, 10);
	FUNC9(p->Context, &m);

	FUNC1(p->Context, path, &fill);
	FUNC8(p->Context, path, &transform, &transformsp);

	FUNC2(path);
}