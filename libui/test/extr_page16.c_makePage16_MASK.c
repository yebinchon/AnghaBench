#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int RowBackgroundColorModelColumn; int ColorModelColumn; int /*<<< orphan*/  Model; } ;
typedef  TYPE_1__ uiTableTextColumnOptionalParams ;
typedef  TYPE_1__ uiTableParams ;
typedef  int /*<<< orphan*/  uiTable ;
typedef  int /*<<< orphan*/  uiBox ;
struct TYPE_10__ {int /*<<< orphan*/  SetCellValue; int /*<<< orphan*/  CellValue; int /*<<< orphan*/  NumRows; int /*<<< orphan*/  ColumnType; int /*<<< orphan*/  NumColumns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* checkStates ; 
 int /*<<< orphan*/ * img ; 
 int /*<<< orphan*/  m ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__ mh ; 
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
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiTableModelColumnAlwaysEditable ; 
 int /*<<< orphan*/  uiTableModelColumnNeverEditable ; 

uiBox *FUNC14(void)
{
	uiBox *page16;
	uiTable *t;
	uiTableParams p;
	uiTableTextColumnOptionalParams tp;

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

	FUNC1(&p, 0, sizeof (uiTableParams));
	p.Model = m;
	p.RowBackgroundColorModelColumn = 3;
	t = FUNC7(&p);
	FUNC4(page16, FUNC5(t), 1);

	FUNC13(t, "Column 1",
		0, uiTableModelColumnNeverEditable, NULL);

	FUNC1(&tp, 0, sizeof (uiTableTextColumnOptionalParams));
	tp.ColorModelColumn = 4;
	FUNC11(t, "Column 2",
		5,
		1, uiTableModelColumnNeverEditable, &tp);
	FUNC13(t, "Editable",
		2, uiTableModelColumnAlwaysEditable, NULL);

	FUNC10(t, "Checkboxes",
		7, uiTableModelColumnAlwaysEditable);
	FUNC9(t, "Buttons",
		6, uiTableModelColumnAlwaysEditable);

	FUNC12(t, "Progress Bar",
		8);

	return page16;
}