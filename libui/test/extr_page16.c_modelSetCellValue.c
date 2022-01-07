
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableValue ;
typedef int uiTableModelHandler ;
typedef int uiTableModel ;


 int * checkStates ;
 int row9text ;
 int strcpy (int ,int ) ;
 int uiTableModelRowChanged (int *,int) ;
 int uiTableValueInt (int const*) ;
 int uiTableValueString (int const*) ;
 int yellowRow ;

__attribute__((used)) static void modelSetCellValue(uiTableModelHandler *mh, uiTableModel *m, int row, int col, const uiTableValue *val)
{
 if (row == 9 && col == 2)
  strcpy(row9text, uiTableValueString(val));
 if (col == 6) {
  int prevYellowRow;

  prevYellowRow = yellowRow;
  yellowRow = row;
  if (prevYellowRow != -1)
   uiTableModelRowChanged(m, prevYellowRow);
  uiTableModelRowChanged(m, yellowRow);
 }
 if (col == 7)
  checkStates[row] = uiTableValueInt(val);
}
