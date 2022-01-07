
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableModelHandler ;
typedef int uiTableModel ;


 int * checkStates ;
 int row9text ;
 int strcpy (int ,char const*) ;
 int uiTableModelTakeInt (void const*) ;
 int yellowRow ;

__attribute__((used)) static void modelSetCellValue(uiTableModelHandler *mh, uiTableModel *m, int row, int col, const void *val)
{
 if (row == 9 && col == 2)
  strcpy(row9text, (const char *) val);
 if (col == 6)
  yellowRow = row;
 if (col == 7)
  checkStates[row] = uiTableModelTakeInt(val);
}
