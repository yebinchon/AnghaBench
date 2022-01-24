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
typedef  int /*<<< orphan*/  uiTableValue ;
typedef  int /*<<< orphan*/  uiTableModel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  uiTableModelColumnAlwaysEditable 129 
#define  uiTableModelColumnNeverEditable 128 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 

int FUNC3(uiTableModel *m, int row, int column)
{
	uiTableValue *value;
	int editable;

	switch (column) {
	case uiTableModelColumnNeverEditable:
		return 0;
	case uiTableModelColumnAlwaysEditable:
		return 1;
	}
	value = FUNC2(m, row, column);
	editable = FUNC1(value);
	FUNC0(value);
	return editable;
}