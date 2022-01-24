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
struct TYPE_5__ {int Cap; int Join; int /*<<< orphan*/  DashPhase; int /*<<< orphan*/  NumDashes; int /*<<< orphan*/  Dashes; int /*<<< orphan*/  Thickness; int /*<<< orphan*/  MiterLimit; } ;
typedef  TYPE_1__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
struct TYPE_6__ {int /*<<< orphan*/  cr; } ;
typedef  TYPE_2__ uiDrawContext ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
typedef  int /*<<< orphan*/  cairo_pattern_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_LINE_CAP_BUTT ; 
 int /*<<< orphan*/  CAIRO_LINE_CAP_ROUND ; 
 int /*<<< orphan*/  CAIRO_LINE_CAP_SQUARE ; 
 int /*<<< orphan*/  CAIRO_LINE_JOIN_BEVEL ; 
 int /*<<< orphan*/  CAIRO_LINE_JOIN_MITER ; 
 int /*<<< orphan*/  CAIRO_LINE_JOIN_ROUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
#define  uiDrawLineCapFlat 133 
#define  uiDrawLineCapRound 132 
#define  uiDrawLineCapSquare 131 
#define  uiDrawLineJoinBevel 130 
#define  uiDrawLineJoinMiter 129 
#define  uiDrawLineJoinRound 128 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(uiDrawContext *c, uiDrawPath *path, uiDrawBrush *b, uiDrawStrokeParams *p)
{
	cairo_pattern_t *pat;

	FUNC9(path, c->cr);
	pat = FUNC8(b);
	FUNC6(c->cr, pat);
	switch (p->Cap) {
	case uiDrawLineCapFlat:
		FUNC2(c->cr, CAIRO_LINE_CAP_BUTT);
		break;
	case uiDrawLineCapRound:
		FUNC2(c->cr, CAIRO_LINE_CAP_ROUND);
		break;
	case uiDrawLineCapSquare:
		FUNC2(c->cr, CAIRO_LINE_CAP_SQUARE);
		break;
	}
	switch (p->Join) {
	case uiDrawLineJoinMiter:
		FUNC3(c->cr, CAIRO_LINE_JOIN_MITER);
		FUNC5(c->cr, p->MiterLimit);
		break;
	case uiDrawLineJoinRound:
		FUNC3(c->cr, CAIRO_LINE_JOIN_ROUND);
		break;
	case uiDrawLineJoinBevel:
		FUNC3(c->cr, CAIRO_LINE_JOIN_BEVEL);
		break;
	}
	FUNC4(c->cr, p->Thickness);
	FUNC1(c->cr, p->Dashes, p->NumDashes, p->DashPhase);
	FUNC7(c->cr);
	FUNC0(pat);
}