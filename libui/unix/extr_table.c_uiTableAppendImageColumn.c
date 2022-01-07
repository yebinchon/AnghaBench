
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTable ;
typedef int GtkTreeViewColumn ;


 int * addColumn (int *,char const*) ;
 int addImageColumn (int *,int *,int) ;

void uiTableAppendImageColumn(uiTable *t, const char *name, int imageModelColumn)
{
 GtkTreeViewColumn *c;

 c = addColumn(t, name);
 addImageColumn(t, c, imageModelColumn);
}
