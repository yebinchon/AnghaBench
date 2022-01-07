
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableValue ;
typedef int uiTableModel ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;


 int GTK_TREE_MODEL (int *) ;
 int gtk_tree_model_get_iter (int ,int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int* gtk_tree_path_get_indices (int *) ;
 int * gtk_tree_path_new_from_string (char const*) ;
 int uiprivTableModelSetCellValue (int *,int,int,int const*) ;

__attribute__((used)) static void onEdited(uiTableModel *m, int column, const char *pathstr, const uiTableValue *tvalue, GtkTreeIter *iter)
{
 GtkTreePath *path;
 int row;

 path = gtk_tree_path_new_from_string(pathstr);
 row = gtk_tree_path_get_indices(path)[0];
 if (iter != ((void*)0))
  gtk_tree_model_get_iter(GTK_TREE_MODEL(m), iter, path);
 gtk_tree_path_free(path);
 uiprivTableModelSetCellValue(m, row, column, tvalue);
}
