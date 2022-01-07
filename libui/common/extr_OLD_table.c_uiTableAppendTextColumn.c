
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableColumn ;
typedef int uiTable ;


 int * uiTableAppendColumn (int *,char const*) ;
 int uiTableColumnAppendTextPart (int *,int,int) ;

uiTableColumn *uiTableAppendTextColumn(uiTable *t, const char *name, int modelColumn)
{
 uiTableColumn *tc;

 tc = uiTableAppendColumn(t, name);
 uiTableColumnAppendTextPart(tc, modelColumn, 1);
 return tc;
}
