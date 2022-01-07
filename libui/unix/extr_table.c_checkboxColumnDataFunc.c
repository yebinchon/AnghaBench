
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkboxColumnParams {int t; int editableColumn; int m; int modelColumn; } ;
typedef scalar_t__ gpointer ;
typedef int gboolean ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;
typedef int GValue ;


 int G_VALUE_INIT ;
 int applyBackgroundColor (int ,int *,int *,int *) ;
 int g_object_set (int *,char*,int,int *) ;
 scalar_t__ g_value_get_int (int *) ;
 int g_value_unset (int *) ;
 int gtk_tree_model_get_value (int *,int *,int ,int *) ;
 int setEditable (int ,int *,int ,int *,char*) ;

__attribute__((used)) static void checkboxColumnDataFunc(GtkTreeViewColumn *c, GtkCellRenderer *r, GtkTreeModel *m, GtkTreeIter *iter, gpointer data)
{
 struct checkboxColumnParams *p = (struct checkboxColumnParams *) data;
 GValue value = G_VALUE_INIT;
 gboolean active;

 gtk_tree_model_get_value(m, iter, p->modelColumn, &value);
 active = g_value_get_int(&value) != 0;
 g_object_set(r, "active", active, ((void*)0));
 g_value_unset(&value);

 setEditable(p->m, iter, p->editableColumn, r, "activatable");

 applyBackgroundColor(p->t, m, iter, r);
}
