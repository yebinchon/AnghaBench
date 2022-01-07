
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buttonColumnParams {int t; int clickableColumn; int m; int modelColumn; } ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;
typedef int GValue ;


 int G_VALUE_INIT ;
 int applyBackgroundColor (int ,int *,int *,int *) ;
 int g_object_set (int *,char*,int const*,int *) ;
 int * g_value_get_string (int *) ;
 int g_value_unset (int *) ;
 int gtk_tree_model_get_value (int *,int *,int ,int *) ;
 int setEditable (int ,int *,int ,int *,char*) ;

__attribute__((used)) static void buttonColumnDataFunc(GtkTreeViewColumn *c, GtkCellRenderer *r, GtkTreeModel *m, GtkTreeIter *iter, gpointer data)
{
 struct buttonColumnParams *p = (struct buttonColumnParams *) data;
 GValue value = G_VALUE_INIT;
 const gchar *str;

 gtk_tree_model_get_value(m, iter, p->modelColumn, &value);
 str = g_value_get_string(&value);
 g_object_set(r, "text", str, ((void*)0));
 g_value_unset(&value);

 setEditable(p->m, iter, p->clickableColumn, r, "sensitive");

 applyBackgroundColor(p->t, m, iter, r);
}
