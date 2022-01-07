
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTable ;
typedef int GtkTreeViewColumn ;


 int addCheckboxColumn (int *,int *,int,int) ;
 int * addColumn (int *,char const*) ;

void uiTableAppendCheckboxColumn(uiTable *t, const char *name, int checkboxModelColumn, int checkboxEditableModelColumn)
{
 GtkTreeViewColumn *c;

 c = addColumn(t, name);
 addCheckboxColumn(t, c, checkboxModelColumn, checkboxEditableModelColumn);
}
