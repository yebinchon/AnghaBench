
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiTableModel ;
typedef int uiTableColumn ;
typedef int uiTable ;
typedef int uiBox ;
struct TYPE_3__ {int SetCellValue; int CellValue; int NumRows; int ColumnType; int NumColumns; } ;


 int appendImageNamed (int ,char*) ;
 int checkStates ;
 int * img ;
 int memset (int ,int ,int) ;
 TYPE_1__ mh ;
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
 int * uiNewTable (int *) ;
 int * uiNewTableModel (TYPE_1__*) ;
 int * uiTableAppendColumn (int *,char*) ;
 int uiTableAppendTextColumn (int *,char*,int ) ;
 int uiTableColumnAppendButtonPart (int *,int,int) ;
 int uiTableColumnAppendCheckboxPart (int *,int,int ) ;
 int uiTableColumnAppendImagePart (int *,int,int ) ;
 int uiTableColumnAppendProgressBarPart (int *,int,int ) ;
 int uiTableColumnAppendTextPart (int *,int,int) ;
 int uiTableColumnPartSetEditable (int *,int,int) ;
 int uiTableColumnPartSetTextColor (int *,int,int) ;
 int uiTableSetRowBackgroundColorModelColumn (int *,int) ;

uiBox *makePage16(void)
{
 uiBox *page16;
 uiTableModel *m;
 uiTable *t;
 uiTableColumn *tc;

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

 t = uiNewTable(m);
 uiBoxAppend(page16, uiControl(t), 1);

 uiTableAppendTextColumn(t, "Column 1", 0);

 tc = uiTableAppendColumn(t, "Column 2");
 uiTableColumnAppendImagePart(tc, 5, 0);
 uiTableColumnAppendTextPart(tc, 1, 0);
 uiTableColumnAppendTextPart(tc, 2, 1);
 uiTableColumnPartSetTextColor(tc, 1, 4);
 uiTableColumnPartSetEditable(tc, 2, 1);

 uiTableSetRowBackgroundColorModelColumn(t, 3);

 tc = uiTableAppendColumn(t, "Buttons");
 uiTableColumnAppendCheckboxPart(tc, 7, 0);
 uiTableColumnAppendButtonPart(tc, 6, 1);

 tc = uiTableAppendColumn(t, "Progress Bar");
 uiTableColumnAppendProgressBarPart(tc, 8, 0);

 return page16;
}
