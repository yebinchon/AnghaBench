
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableValue ;
struct checkboxColumnParams {int m; int modelColumn; } ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererToggle ;
typedef int GValue ;


 int GTK_CELL_RENDERER (int *) ;
 int GTK_TREE_MODEL (int ) ;
 int G_VALUE_INIT ;
 int checkboxColumnDataFunc (int *,int ,int ,int *,scalar_t__) ;
 int g_value_get_int (int *) ;
 int g_value_unset (int *) ;
 int gtk_tree_model_get_iter (int ,int *,int *) ;
 int gtk_tree_model_get_value (int ,int *,int ,int *) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_new_from_string (int *) ;
 int onEdited (int ,int ,int *,int *,int *) ;
 int uiFreeTableValue (int *) ;
 int * uiNewTableValueInt (int) ;

__attribute__((used)) static void checkboxColumnToggled(GtkCellRendererToggle *r, gchar *pathstr, gpointer data)
{
 struct checkboxColumnParams *p = (struct checkboxColumnParams *) data;
 GValue value = G_VALUE_INIT;
 int v;
 uiTableValue *tvalue;
 GtkTreePath *path;
 GtkTreeIter iter;

 path = gtk_tree_path_new_from_string(pathstr);
 gtk_tree_model_get_iter(GTK_TREE_MODEL(p->m), &iter, path);
 gtk_tree_path_free(path);
 gtk_tree_model_get_value(GTK_TREE_MODEL(p->m), &iter, p->modelColumn, &value);
 v = g_value_get_int(&value);
 g_value_unset(&value);
 tvalue = uiNewTableValueInt(!v);
 onEdited(p->m, p->modelColumn, pathstr, tvalue, ((void*)0));
 uiFreeTableValue(tvalue);


 checkboxColumnDataFunc(((void*)0), GTK_CELL_RENDERER(r), GTK_TREE_MODEL(p->m), &iter, data);
}
