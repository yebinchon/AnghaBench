
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableModel ;
typedef int gboolean ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;


 int GTK_TREE_MODEL (int *) ;
 int g_object_set (int *,char const*,int,int *) ;
 int * gtk_tree_model_get_path (int ,int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 scalar_t__ uiprivTableModelCellEditable (int *,int,int) ;

__attribute__((used)) static void setEditable(uiTableModel *m, GtkTreeIter *iter, int modelColumn, GtkCellRenderer *r, const char *prop)
{
 GtkTreePath *path;
 int row;
 gboolean editable;


 path = gtk_tree_model_get_path(GTK_TREE_MODEL(m), iter);
 row = gtk_tree_path_get_indices(path)[0];
 editable = uiprivTableModelCellEditable(m, row, modelColumn) != 0;
 g_object_set(r, prop, editable, ((void*)0));
}
