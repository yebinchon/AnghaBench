
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableValue ;
struct textColumnParams {int m; int modelColumn; } ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererText ;


 int GTK_CELL_RENDERER (int *) ;
 int GTK_TREE_MODEL (int ) ;
 int onEdited (int ,int ,int *,int *,int *) ;
 int textColumnDataFunc (int *,int ,int ,int *,scalar_t__) ;
 int uiFreeTableValue (int *) ;
 int * uiNewTableValueString (int *) ;

__attribute__((used)) static void textColumnEdited(GtkCellRendererText *r, gchar *path, gchar *newText, gpointer data)
{
 struct textColumnParams *p = (struct textColumnParams *) data;
 uiTableValue *tvalue;
 GtkTreeIter iter;

 tvalue = uiNewTableValueString(newText);
 onEdited(p->m, p->modelColumn, path, tvalue, &iter);
 uiFreeTableValue(tvalue);

 textColumnDataFunc(((void*)0), GTK_CELL_RENDERER(r), GTK_TREE_MODEL(p->m), &iter, data);
}
