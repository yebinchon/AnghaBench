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
struct TYPE_5__ {int Thickness; scalar_t__ DashPhase; scalar_t__ NumDashes; int /*<<< orphan*/ * Dashes; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawMatrix ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_6__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_2__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,double,int) ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawFillModeAlternate ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int uiPi ; 

__attribute__((used)) static void FUNC11(uiAreaDrawParams *p)
{
	uiDrawBrush source;
	uiDrawStrokeParams sp;
	uiDrawPath *path;
	uiDrawMatrix m;

	FUNC0(&source, 0, 0, 0, 1);
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	sp.Dashes = NULL;
	sp.NumDashes = 0;
	sp.DashPhase = 0;

	sp.Thickness = 6;

	path = FUNC5(uiDrawFillModeAlternate);
	FUNC6(path, 12, 12, 232, 70);
	FUNC8(path,
		64, 64,
		40,
		0, 2*uiPi,
		0);
	FUNC8(path,
		192, 64,
		40,
		0, -2*uiPi,
		1);
	FUNC7(path);

	FUNC0(&source, 0, 0.7, 0, 1);
	FUNC1(p->Context, path, &source);
	FUNC0(&source, 0, 0, 0, 1);
	FUNC9(p->Context, path, &source, &sp);
	FUNC2(path);

	FUNC3(&m);
	FUNC4(&m, 0, 128);
	FUNC10(p->Context, &m);

	path = FUNC5(uiDrawFillModeWinding);
	FUNC6(path, 12, 12, 232, 70);
	FUNC8(path,
		64, 64,
		40,
		0, 2*uiPi,
		0);
	FUNC8(path,
		192, 64,
		40,
		0, -2*uiPi,
		1);
	FUNC7(path);

	FUNC0(&source, 0, 0, 0.9, 1);
	FUNC1(p->Context, path, &source);
	FUNC0(&source, 0, 0, 0, 1);
	FUNC9(p->Context, path, &source, &sp);
	FUNC2(path);
}