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
typedef  int /*<<< orphan*/  uiTableModelHandler ;
typedef  int /*<<< orphan*/  uiTableModel ;

/* Variables and functions */
 int /*<<< orphan*/ * checkStates ; 
 int /*<<< orphan*/  row9text ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int yellowRow ; 

__attribute__((used)) static void FUNC4(uiTableModelHandler *mh, uiTableModel *m, int row, int col, const uiTableValue *val)
{
	if (row == 9 && col == 2)
		FUNC0(row9text, FUNC3(val));
	if (col == 6) {
		int prevYellowRow;

		prevYellowRow = yellowRow;
		yellowRow = row;
		if (prevYellowRow != -1)
			FUNC1(m, prevYellowRow);
		FUNC1(m, yellowRow);
	}
	if (col == 7)
		checkStates[row] = FUNC2(val);
}