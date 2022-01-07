
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableModel ;
typedef int GtkTreePath ;


 int GTK_TREE_MODEL (int *) ;
 int gtk_tree_model_row_deleted (int ,int *) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_new_from_indices (int,int) ;

void uiTableModelRowDeleted(uiTableModel *m, int oldIndex)
{
 GtkTreePath *path;

 path = gtk_tree_path_new_from_indices(oldIndex, -1);
 gtk_tree_model_row_deleted(GTK_TREE_MODEL(m), path);
 gtk_tree_path_free(path);
}
