
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableTextColumnOptionalParams ;
typedef int uiTable ;
typedef int GtkTreeViewColumn ;


 int * addColumn (int *,char const*) ;
 int addImageColumn (int *,int *,int) ;
 int addTextColumn (int *,int *,int,int,int *) ;

void uiTableAppendImageTextColumn(uiTable *t, const char *name, int imageModelColumn, int textModelColumn, int textEditableModelColumn, uiTableTextColumnOptionalParams *textParams)
{
 GtkTreeViewColumn *c;

 c = addColumn(t, name);
 addImageColumn(t, c, imageModelColumn);
 addTextColumn(t, c, textModelColumn, textEditableModelColumn, textParams);
}
