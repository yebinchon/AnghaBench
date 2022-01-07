
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableTextColumnOptionalParams ;
typedef int uiTable ;
typedef int GtkTreeViewColumn ;


 int addCheckboxColumn (int *,int *,int,int) ;
 int * addColumn (int *,char const*) ;
 int addTextColumn (int *,int *,int,int,int *) ;

void uiTableAppendCheckboxTextColumn(uiTable *t, const char *name, int checkboxModelColumn, int checkboxEditableModelColumn, int textModelColumn, int textEditableModelColumn, uiTableTextColumnOptionalParams *textParams)
{
 GtkTreeViewColumn *c;

 c = addColumn(t, name);
 addCheckboxColumn(t, c, checkboxModelColumn, checkboxEditableModelColumn);
 addTextColumn(t, c, textModelColumn, textEditableModelColumn, textParams);
}
