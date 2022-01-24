#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiTableModel ;
struct TYPE_5__ {char* Name; int Mutable; size_t ValueColumn; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ uiTableColumnParams ;
typedef  int /*<<< orphan*/  uiTable ;
typedef  int /*<<< orphan*/  uiBox ;
typedef  size_t intmax_t ;
struct TYPE_6__ {int /*<<< orphan*/  SetCellValue; int /*<<< orphan*/  CellValue; int /*<<< orphan*/  NumRows; } ;

/* Variables and functions */
 int /*<<< orphan*/ * coltypes ; 
 int /*<<< orphan*/  modelCellValue ; 
 int /*<<< orphan*/  modelNumRows ; 
 int /*<<< orphan*/  modelSetCellValue ; 
 size_t nColumns ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_3__ spec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

uiBox *FUNC7(void)
{
	uiBox *page9;
	uiTable *table;
	uiTableModel *model;
	uiTableColumnParams p;
	intmax_t i;

	page9 = FUNC0();

	table = FUNC3();
	FUNC1(page9, FUNC2(table), 1);

	spec.NumRows = modelNumRows;
	spec.CellValue = modelCellValue;
	spec.SetCellValue = modelSetCellValue;
	model = FUNC4(nColumns, coltypes, &spec, NULL);
	FUNC6(table, model);

	for (i = 0; i < nColumns; i++) {
		p.Name = "Column";
		p.Type = coltypes[i];
		p.Mutable = i % 2 == 1;
		p.ValueColumn = i;
		FUNC5(table, &p);
	}

	return page9;
}