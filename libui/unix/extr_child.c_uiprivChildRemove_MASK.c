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
struct TYPE_4__ {int /*<<< orphan*/ * box; int /*<<< orphan*/  oldvalign; int /*<<< orphan*/  widget; int /*<<< orphan*/  oldvexpand; int /*<<< orphan*/  oldhalign; int /*<<< orphan*/  oldhexpand; int /*<<< orphan*/  parent; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ uiprivChild ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(uiprivChild *c)
{
	FUNC5(c->c, NULL);
	FUNC7(FUNC6(c->c), c->parent, TRUE);

	FUNC2(c->widget, c->oldhexpand);
	FUNC1(c->widget, c->oldhalign);
	FUNC4(c->widget, c->oldvexpand);
	FUNC3(c->widget, c->oldvalign);

	if (c->box != NULL)
		FUNC0(c->box);

	FUNC8(c);
}