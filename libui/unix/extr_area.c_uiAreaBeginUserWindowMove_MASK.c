#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* dragevent; int /*<<< orphan*/  widget; } ;
typedef  TYPE_2__ uiArea ;
struct TYPE_4__ {int /*<<< orphan*/  time; int /*<<< orphan*/  y_root; int /*<<< orphan*/  x_root; int /*<<< orphan*/  button; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(uiArea *a)
{
	GtkWidget *toplevel;

	if (a->dragevent == NULL)
		FUNC5("cannot call uiAreaBeginUserWindowMove() outside of a Mouse() with Down != 0");
	// TODO don't we have a libui function for this? did I scrap it?
	// TODO widget or areaWidget?
	toplevel = FUNC2(a->widget);
	if (toplevel == NULL) {
		// TODO
		return;
	}
	// the docs say to do this
	if (!FUNC3(toplevel)) {
		// TODO
		return;
	}
	if (!FUNC0(toplevel)) {
		// TODO
		return;
	}
	FUNC4(FUNC1(toplevel),
		a->dragevent->button,
		a->dragevent->x_root,		// TODO are these correct?
		a->dragevent->y_root,
		a->dragevent->time);
}