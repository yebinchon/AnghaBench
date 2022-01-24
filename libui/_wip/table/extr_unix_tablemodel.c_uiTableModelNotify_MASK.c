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
typedef  int uiTableNotification ;
typedef  int /*<<< orphan*/  uiTableModel ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
#define  uiTableCellChanged 130 
#define  uiTableRowDeleted 129 
#define  uiTableRowInserted 128 

void FUNC8(uiTableModel *m, uiTableNotification notification, intmax_t row, intmax_t column)
{
	GtkTreeModel *model = FUNC0(m);
	GtkTreePath *path;
	GtkTreeIter iter;

	path = FUNC7(row, -1);
	switch (notification) {
	case uiTableRowInserted:
		if (FUNC2(model, &iter, path) == FALSE)
			FUNC1("invalid row given to row inserted in uiTableModelNotify()");
		FUNC5(model, path, &iter);
		break;
	case uiTableRowDeleted:
		FUNC4(model, path);
		break;
	case uiTableCellChanged:
		if (FUNC2(model, &iter, path) == FALSE)
			FUNC1("invalid row given to row changed in uiTableModelNotify()");
		FUNC3(model, path, &iter);
		break;
	default:
		FUNC1("unknown uiTable notification %d in uiTableModelNotify()", notification);
	}
	FUNC6(path);
}