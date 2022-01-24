#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiDrawPath ;
struct TYPE_3__ {int /*<<< orphan*/  cr; } ;
typedef  TYPE_1__ uiDrawContext ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FILL_RULE_EVEN_ODD ; 
 int /*<<< orphan*/  CAIRO_FILL_RULE_WINDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  uiDrawFillModeAlternate 129 
#define  uiDrawFillModeWinding 128 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(uiDrawContext *c, uiDrawPath *path)
{
	FUNC3(path, c->cr);
	switch (FUNC2(path)) {
	case uiDrawFillModeWinding:
		FUNC1(c->cr, CAIRO_FILL_RULE_WINDING);
		break;
	case uiDrawFillModeAlternate:
		FUNC1(c->cr, CAIRO_FILL_RULE_EVEN_ODD);
		break;
	}
	FUNC0(c->cr);
}