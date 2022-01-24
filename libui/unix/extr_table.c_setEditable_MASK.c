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
typedef  int /*<<< orphan*/  uiTableModel ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(uiTableModel *m, GtkTreeIter *iter, int modelColumn, GtkCellRenderer *r, const char *prop)
{
	GtkTreePath *path;
	int row;
	gboolean editable;

	// TODO avoid the need for this
	path = FUNC2(FUNC0(m), iter);
	row = FUNC3(path)[0];
	editable = FUNC4(m, row, modelColumn) != 0;
	FUNC1(r, prop, editable, NULL);
}