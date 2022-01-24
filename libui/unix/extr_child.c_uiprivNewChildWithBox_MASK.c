#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * box; int /*<<< orphan*/  widget; } ;
typedef  TYPE_1__ uiprivChild ;
typedef  int /*<<< orphan*/  uiControl ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkContainer ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_ALIGN_FILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uiprivChild *FUNC10(uiControl *child, uiControl *parent, GtkContainer *parentContainer, int margined)
{
	uiprivChild *c;
	GtkWidget *box;

	if (child == NULL)
		return NULL;
	box = FUNC1(GTK_ORIENTATION_HORIZONTAL, 0);
	FUNC7(box);
	c = FUNC9(child, parent, FUNC0(box));
	FUNC4(c->widget, TRUE);
	FUNC3(c->widget, GTK_ALIGN_FILL);
	FUNC6(c->widget, TRUE);
	FUNC5(c->widget, GTK_ALIGN_FILL);
	c->box = box;
	FUNC2(parentContainer, c->box);
	FUNC8(c, margined);
	return c;
}