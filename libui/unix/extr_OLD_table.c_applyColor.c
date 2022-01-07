
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;
typedef int GdkRGBA ;
typedef int GValue ;


 int * FALSE ;
 int G_VALUE_INIT ;
 int g_object_set (int *,char const*,int *,int *) ;
 scalar_t__ g_value_get_boxed (int *) ;
 int g_value_unset (int *) ;
 int gtk_tree_model_get_value (int *,int *,int,int *) ;

__attribute__((used)) static void applyColor(GtkTreeModel *mm, GtkTreeIter *iter, int modelColumn, GtkCellRenderer *r, const char *prop, const char *propSet)
{
 GValue value = G_VALUE_INIT;
 GdkRGBA *rgba;

 gtk_tree_model_get_value(mm, iter, modelColumn, &value);
 rgba = (GdkRGBA *) g_value_get_boxed(&value);
 if (rgba != ((void*)0))
  g_object_set(r, prop, rgba, ((void*)0));
 else
  g_object_set(r, propSet, FALSE, ((void*)0));
 g_value_unset(&value);
}
