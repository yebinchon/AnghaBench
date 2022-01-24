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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,double,double,double) ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,double,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(uiAreaDrawParams *p)
{
	double x=25.6,  y=128.0;
	double x1=102.4, y1=230.4,
		x2=153.6, y2=25.6,
		x3=230.4, y3=128.0;
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

	path = FUNC2(uiDrawFillModeWinding);

	FUNC6(path, x, y);
	FUNC3(path, x1, y1, x2, y2, x3, y3);
	FUNC4(path);
	sp.Thickness = 10.0;
	FUNC7(p->Context, path, &source, &sp);
	FUNC1(path);

	FUNC0(&source, 1, 0.2, 0.2, 0.6);
	sp.Thickness = 6.0;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC6(path, x, y);
	FUNC5(path, x1, y1);
	FUNC6(path, x2, y2);
	FUNC5(path, x3, y3);
	FUNC4(path);
	FUNC7(p->Context, path, &source, &sp);
	FUNC1(path);
}