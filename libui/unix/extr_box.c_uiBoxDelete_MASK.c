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
struct TYPE_4__ {int /*<<< orphan*/  controls; int /*<<< orphan*/  stretchygroup; int /*<<< orphan*/  container; } ;
typedef  TYPE_1__ uiBox ;
struct boxChild {int /*<<< orphan*/  oldvalign; int /*<<< orphan*/  oldvexpand; int /*<<< orphan*/  oldhalign; int /*<<< orphan*/  oldhexpand; scalar_t__ stretchy; int /*<<< orphan*/  c; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 struct boxChild* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(uiBox *b, int index)
{
	struct boxChild *bc;
	GtkWidget *widget;

	bc = FUNC1(b, index);
	widget = FUNC0(FUNC8(bc->c));

	FUNC9(bc->c, NULL);
	FUNC11(FUNC10(bc->c), b->container, TRUE);

	if (bc->stretchy)
		FUNC3(b->stretchygroup, widget);
	FUNC5(widget, bc->oldhexpand);
	FUNC4(widget, bc->oldhalign);
	FUNC7(widget, bc->oldvexpand);
	FUNC6(widget, bc->oldvalign);

	FUNC2(b->controls, index);
}