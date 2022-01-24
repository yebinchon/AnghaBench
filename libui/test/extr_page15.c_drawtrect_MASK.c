#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawContext ;
struct TYPE_4__ {double R; double G; double B; double A; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ uiDrawBrush ;
struct trect {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uiDrawBrushTypeSolid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(uiDrawContext *c, struct trect tr, double r, double g, double bl)
{
	uiDrawPath *p;
	uiDrawBrush b;

	FUNC0(&b, 0, sizeof (uiDrawBrush));
	b.Type = uiDrawBrushTypeSolid;
	b.R = r;
	b.G = g;
	b.B = bl;
	b.A = 1.0;
	if (tr.in) {
		b.R += b.R * 0.75;
		b.G += b.G * 0.75;
		b.B += b.B * 0.75;
	}
	p = FUNC3(uiDrawFillModeWinding);
	FUNC4(p,
		tr.left,
		tr.top,
		tr.right - tr.left,
		tr.bottom - tr.top);
	FUNC5(p);
	FUNC1(c, p, &b);
	FUNC2(p);
}