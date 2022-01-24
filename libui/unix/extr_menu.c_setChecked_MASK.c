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
struct TYPE_3__ {int /*<<< orphan*/  checked; int /*<<< orphan*/  windows; } ;
typedef  TYPE_1__ uiMenuItem ;
struct menuItemWindow {int /*<<< orphan*/  signal; } ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GHashTableIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uiMenuItem *item, gboolean checked)
{
	GHashTableIter iter;
	gpointer widget;
	gpointer ww;
	struct menuItemWindow *w;

	item->checked = checked;
	FUNC1(&iter, item->windows);
	while (FUNC2(&iter, &widget, &ww)) {
		w = (struct menuItemWindow *) ww;
		FUNC3(FUNC0(widget), item->checked, w->signal);
	}
}