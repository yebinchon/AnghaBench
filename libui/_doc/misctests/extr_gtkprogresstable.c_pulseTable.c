
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;


 int GTK_TREE_MODEL (int ) ;
 int TRUE ;
 int gtk_tree_model_get_iter (int ,int *,int *) ;
 int gtk_tree_model_row_changed (int ,int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_new_from_indices (int ,int) ;
 int model ;

__attribute__((used)) static gboolean pulseTable(gpointer data)
{
 GtkTreePath *path;
 GtkTreeIter iter;

 path = gtk_tree_path_new_from_indices(0, -1);
 gtk_tree_model_get_iter(GTK_TREE_MODEL(model), &iter, path);
 gtk_tree_model_row_changed(GTK_TREE_MODEL(model), path, &iter);
 gtk_tree_path_free(path);
 return TRUE;
}
