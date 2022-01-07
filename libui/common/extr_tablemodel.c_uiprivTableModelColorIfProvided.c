
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableValue ;
typedef int uiTableModel ;


 int uiFreeTableValue (int *) ;
 int uiTableValueColor (int *,double*,double*,double*,double*) ;
 int * uiprivTableModelCellValue (int *,int,int) ;

int uiprivTableModelColorIfProvided(uiTableModel *m, int row, int column, double *r, double *g, double *b, double *a)
{
 uiTableValue *value;

 if (column == -1)
  return 0;
 value = uiprivTableModelCellValue(m, row, column);
 if (value == ((void*)0))
  return 0;
 uiTableValueColor(value, r, g, b, a);
 uiFreeTableValue(value);
 return 1;
}
