
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableTextColumnOptionalParams ;
typedef int uiTable ;
typedef int GtkTreeViewColumn ;


 int * addColumn (int *,char const*) ;
 int addTextColumn (int *,int *,int,int,int *) ;

void uiTableAppendTextColumn(uiTable *t, const char *name, int textModelColumn, int textEditableModelColumn, uiTableTextColumnOptionalParams *textParams)
{
 GtkTreeViewColumn *c;

 c = addColumn(t, name);
 addTextColumn(t, c, textModelColumn, textEditableModelColumn, textParams);
}
