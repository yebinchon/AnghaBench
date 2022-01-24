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
struct TYPE_5__ {double Thickness; void* Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_6__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_2__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,double,double,int) ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* uiDrawLineCapFlat ; 
 void* uiDrawLineCapRound ; 
 void* uiDrawLineCapSquare ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(uiAreaDrawParams *p)
{
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

	sp.Thickness = 30.0;

	sp.Cap = uiDrawLineCapFlat;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC5(path, 64.0, 50.0);
	FUNC4(path, 64.0, 200.0);
	FUNC3(path);
	FUNC6(p->Context, path, &source, &sp);
	FUNC1(path);

	sp.Cap = uiDrawLineCapRound;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC5(path, 128.0, 50.0);
	FUNC4(path, 128.0, 200.0);
	FUNC3(path);
	FUNC6(p->Context, path, &source, &sp);
	FUNC1(path);

	sp.Cap = uiDrawLineCapSquare;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC5(path, 192.0, 50.0);
	FUNC4(path, 192.0, 200.0);
	FUNC3(path);
	FUNC6(p->Context, path, &source, &sp);
	FUNC1(path);

	// draw helping lines
	// keep the square cap to match the reference picture on the cairo website
	FUNC0(&source, 1, 0.2, 0.2, 1);
	sp.Thickness = 2.56;
	path = FUNC2(uiDrawFillModeWinding);
	FUNC5(path, 64.0, 50.0);
	FUNC4(path, 64.0, 200.0);
	FUNC5(path, 128.0, 50.0);
	FUNC4(path, 128.0, 200.0);
	FUNC5(path, 192.0, 50.0);
	FUNC4(path, 192.0, 200.0);
	FUNC3(path);
	FUNC6(p->Context, path, &source, &sp);
	FUNC1(path);
}