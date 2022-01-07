
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiTableModel ;
struct TYPE_5__ {char* Name; int Mutable; size_t ValueColumn; int Type; } ;
typedef TYPE_1__ uiTableColumnParams ;
typedef int uiTable ;
typedef int uiBox ;
typedef size_t intmax_t ;
struct TYPE_6__ {int SetCellValue; int CellValue; int NumRows; } ;


 int * coltypes ;
 int modelCellValue ;
 int modelNumRows ;
 int modelSetCellValue ;
 size_t nColumns ;
 int * newVerticalBox () ;
 TYPE_3__ spec ;
 int uiBoxAppend (int *,int ,int) ;
 int uiControl (int *) ;
 int * uiNewTable () ;
 int * uiNewTableModel (size_t,int *,TYPE_3__*,int *) ;
 int uiTableAppendColumn (int *,TYPE_1__*) ;
 int uiTableSetModel (int *,int *) ;

uiBox *makePage9(void)
{
 uiBox *page9;
 uiTable *table;
 uiTableModel *model;
 uiTableColumnParams p;
 intmax_t i;

 page9 = newVerticalBox();

 table = uiNewTable();
 uiBoxAppend(page9, uiControl(table), 1);

 spec.NumRows = modelNumRows;
 spec.CellValue = modelCellValue;
 spec.SetCellValue = modelSetCellValue;
 model = uiNewTableModel(nColumns, coltypes, &spec, ((void*)0));
 uiTableSetModel(table, model);

 for (i = 0; i < nColumns; i++) {
  p.Name = "Column";
  p.Type = coltypes[i];
  p.Mutable = i % 2 == 1;
  p.ValueColumn = i;
  uiTableAppendColumn(table, &p);
 }

 return page9;
}
