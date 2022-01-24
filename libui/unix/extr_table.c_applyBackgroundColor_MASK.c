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
struct TYPE_3__ {int backgroundColumn; } ;
typedef  TYPE_1__ uiTable ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC1(uiTable *t, GtkTreeModel *m, GtkTreeIter *iter, GtkCellRenderer *r)
{
	if (t->backgroundColumn != -1)
		FUNC0(m, iter, t->backgroundColumn,
			r, "cell-background-rgba", "cell-background-set");
}