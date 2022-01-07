
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int RowBackgroundColorModelColumn; int ColorModelColumn; int Model; } ;
typedef TYPE_1__ uiTableTextColumnOptionalParams ;
typedef TYPE_1__ uiTableParams ;
typedef int uiTable ;
typedef int uiBox ;
struct TYPE_10__ {int SetCellValue; int CellValue; int NumRows; int ColumnType; int NumColumns; } ;


 int appendImageNamed (int ,char*) ;
 TYPE_1__* checkStates ;
 int * img ;
 int m ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_4__ mh ;
 int modelCellValue ;
 int modelColumnType ;
 int modelNumColumns ;
 int modelNumRows ;
 int modelSetCellValue ;
 int * newVerticalBox () ;
 int row9text ;
 int strcpy (int ,char*) ;
 int uiBoxAppend (int *,int ,int) ;
 int uiControl (int *) ;
 int uiNewImage (int,int) ;
 int * uiNewTable (TYPE_1__*) ;
 int uiNewTableModel (TYPE_4__*) ;
 int uiTableAppendButtonColumn (int *,char*,int,int ) ;
 int uiTableAppendCheckboxColumn (int *,char*,int,int ) ;
 int uiTableAppendImageTextColumn (int *,char*,int,int,int ,TYPE_1__*) ;
 int uiTableAppendProgressBarColumn (int *,char*,int) ;
 int uiTableAppendTextColumn (int *,char*,int,int ,int *) ;
 int uiTableModelColumnAlwaysEditable ;
 int uiTableModelColumnNeverEditable ;

uiBox *makePage16(void)
{
 uiBox *page16;
 uiTable *t;
 uiTableParams p;
 uiTableTextColumnOptionalParams tp;

 img[0] = uiNewImage(16, 16);
 appendImageNamed(img[0], "andlabs_16x16test_24june2016.png");
 appendImageNamed(img[0], "andlabs_32x32test_24june2016.png");
 img[1] = uiNewImage(16, 16);
 appendImageNamed(img[1], "tango-icon-theme-0.8.90_16x16_x-office-spreadsheet.png");
 appendImageNamed(img[1], "tango-icon-theme-0.8.90_32x32_x-office-spreadsheet.png");

 strcpy(row9text, "Part");

 memset(checkStates, 0, 15 * sizeof (int));

 page16 = newVerticalBox();

 mh.NumColumns = modelNumColumns;
 mh.ColumnType = modelColumnType;
 mh.NumRows = modelNumRows;
 mh.CellValue = modelCellValue;
 mh.SetCellValue = modelSetCellValue;
 m = uiNewTableModel(&mh);

 memset(&p, 0, sizeof (uiTableParams));
 p.Model = m;
 p.RowBackgroundColorModelColumn = 3;
 t = uiNewTable(&p);
 uiBoxAppend(page16, uiControl(t), 1);

 uiTableAppendTextColumn(t, "Column 1",
  0, uiTableModelColumnNeverEditable, ((void*)0));

 memset(&tp, 0, sizeof (uiTableTextColumnOptionalParams));
 tp.ColorModelColumn = 4;
 uiTableAppendImageTextColumn(t, "Column 2",
  5,
  1, uiTableModelColumnNeverEditable, &tp);
 uiTableAppendTextColumn(t, "Editable",
  2, uiTableModelColumnAlwaysEditable, ((void*)0));

 uiTableAppendCheckboxColumn(t, "Checkboxes",
  7, uiTableModelColumnAlwaysEditable);
 uiTableAppendButtonColumn(t, "Buttons",
  6, uiTableModelColumnAlwaysEditable);

 uiTableAppendProgressBarColumn(t, "Progress Bar",
  8);

 return page16;
}
