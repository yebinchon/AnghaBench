#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uiControl ;
typedef  size_t uiAlign ;
struct gridChild {int /*<<< orphan*/  oldvalign; int /*<<< orphan*/  oldvexpand; int /*<<< orphan*/  oldhalign; int /*<<< orphan*/  oldhexpand; int /*<<< orphan*/ * c; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * gtkAligns ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GtkWidget *FUNC10(struct gridChild *gc, uiControl *c, int hexpand, uiAlign halign, int vexpand, uiAlign valign)
{
	GtkWidget *widget;

	gc->c = c;
	widget = FUNC0(FUNC9(gc->c));
	gc->oldhexpand = FUNC2(widget);
	gc->oldhalign = FUNC1(widget);
	gc->oldvexpand = FUNC4(widget);
	gc->oldvalign = FUNC3(widget);
	FUNC6(widget, hexpand != 0);
	FUNC5(widget, gtkAligns[halign]);
	FUNC8(widget, vexpand != 0);
	FUNC7(widget, gtkAligns[valign]);
	return widget;
}