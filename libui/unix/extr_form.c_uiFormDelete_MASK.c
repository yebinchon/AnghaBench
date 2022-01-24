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
struct TYPE_4__ {int /*<<< orphan*/  children; int /*<<< orphan*/  stretchygroup; int /*<<< orphan*/  container; } ;
typedef  TYPE_1__ uiForm ;
struct formChild {int /*<<< orphan*/  oldvalign; int /*<<< orphan*/  oldvexpand; int /*<<< orphan*/  oldhalign; int /*<<< orphan*/  oldhexpand; scalar_t__ stretchy; int /*<<< orphan*/  c; int /*<<< orphan*/  label; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 struct formChild* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(uiForm *f, int index)
{
	struct formChild *fc;
	GtkWidget *widget;

	fc = FUNC1(f, index);
	widget = FUNC0(FUNC9(fc->c));

	FUNC4(fc->label);

	FUNC10(fc->c, NULL);
	FUNC12(FUNC11(fc->c), f->container, TRUE);

	if (fc->stretchy)
		FUNC3(f->stretchygroup, widget);
	FUNC6(widget, fc->oldhexpand);
	FUNC5(widget, fc->oldhalign);
	FUNC8(widget, fc->oldvexpand);
	FUNC7(widget, fc->oldvalign);

	FUNC2(f->children, index);
}