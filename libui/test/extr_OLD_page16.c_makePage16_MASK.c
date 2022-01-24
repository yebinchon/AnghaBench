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
typedef  int /*<<< orphan*/  uiTableModel ;
typedef  int /*<<< orphan*/  uiTableColumn ;
typedef  int /*<<< orphan*/  uiTable ;
typedef  int /*<<< orphan*/  uiBox ;
struct TYPE_3__ {int /*<<< orphan*/  SetCellValue; int /*<<< orphan*/  CellValue; int /*<<< orphan*/  NumRows; int /*<<< orphan*/  ColumnType; int /*<<< orphan*/  NumColumns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  checkStates ; 
 int /*<<< orphan*/ * img ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ mh ; 
 int /*<<< orphan*/  modelCellValue ; 
 int /*<<< orphan*/  modelColumnType ; 
 int /*<<< orphan*/  modelNumColumns ; 
 int /*<<< orphan*/  modelNumRows ; 
 int /*<<< orphan*/  modelSetCellValue ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  row9text ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 

uiBox *FUNC19(void)
{
	uiBox *page16;
	uiTableModel *m;
	uiTable *t;
	uiTableColumn *tc;

	img[0] = FUNC6(16, 16);
	FUNC0(img[0], "andlabs_16x16test_24june2016.png");
	FUNC0(img[0], "andlabs_32x32test_24june2016.png");
	img[1] = FUNC6(16, 16);
	FUNC0(img[1], "tango-icon-theme-0.8.90_16x16_x-office-spreadsheet.png");
	FUNC0(img[1], "tango-icon-theme-0.8.90_32x32_x-office-spreadsheet.png");

	FUNC3(row9text, "Part");

	FUNC1(checkStates, 0, 15 * sizeof (int));

	page16 = FUNC2();

	mh.NumColumns = modelNumColumns;
	mh.ColumnType = modelColumnType;
	mh.NumRows = modelNumRows;
	mh.CellValue = modelCellValue;
	mh.SetCellValue = modelSetCellValue;
	m = FUNC8(&mh);

	t = FUNC7(m);
	FUNC4(page16, FUNC5(t), 1);

	FUNC10(t, "Column 1", 0);

	tc = FUNC9(t, "Column 2");
	FUNC13(tc, 5, 0);
	FUNC15(tc, 1, 0);
	FUNC15(tc, 2, 1);
	FUNC17(tc, 1, 4);
	FUNC16(tc, 2, 1);

	FUNC18(t, 3);

	tc = FUNC9(t, "Buttons");
	FUNC12(tc, 7, 0);
	FUNC11(tc, 6, 1);

	tc = FUNC9(t, "Progress Bar");
	FUNC14(tc, 8, 0);

	return page16;
}