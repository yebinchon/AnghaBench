
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableValue ;
typedef int uiTableModel ;


 int uiFreeTableValue (int *) ;


 int uiTableValueInt (int *) ;
 int * uiprivTableModelCellValue (int *,int,int) ;

int uiprivTableModelCellEditable(uiTableModel *m, int row, int column)
{
 uiTableValue *value;
 int editable;

 switch (column) {
 case 128:
  return 0;
 case 129:
  return 1;
 }
 value = uiprivTableModelCellValue(m, row, column);
 editable = uiTableValueInt(value);
 uiFreeTableValue(value);
 return editable;
}
