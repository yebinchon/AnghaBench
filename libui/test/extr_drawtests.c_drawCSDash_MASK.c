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
struct TYPE_5__ {double* Dashes; int NumDashes; double DashPhase; double Thickness; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_6__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_2__ uiAreaDrawParams ;
typedef  int /*<<< orphan*/  dashes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
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
	double dashes[] = {
		50.0,  /* ink */
		10.0,  /* skip */
		10.0,  /* ink */
		10.0   /* skip*/
	};
	int    ndash  = sizeof (dashes)/sizeof(dashes[0]);
	double offset = -50.0;

	uiDrawBrush source;
	uiDrawStrokeParams sp;
	uiDrawPath *path;

	FUNC0(&source, 0, 0, 0, 1);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	sp.Dashes = dashes;
	sp.NumDashes = ndash;
	sp.DashPhase = offset;
	sp.Thickness = 10.0;

	path = FUNC2(uiDrawFillModeWinding);
	FUNC6(path, 128.0, 25.6);
	FUNC5(path, 230.4, 230.4);
	FUNC5(path, 230.4 -102.4, 230.4 + 0.0);
	FUNC3(path,
		51.2, 230.4,
		51.2, 128.0,
		128.0, 128.0);
	FUNC4(path);

	FUNC7(p->Context, path, &source, &sp);
	FUNC1(path);
}