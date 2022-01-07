
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableNotification ;
typedef int uiTableModel ;
typedef int intmax_t ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int FALSE ;
 int * GTK_TREE_MODEL (int *) ;
 int complain (char*,...) ;
 int gtk_tree_model_get_iter (int *,int *,int *) ;
 int gtk_tree_model_row_changed (int *,int *,int *) ;
 int gtk_tree_model_row_deleted (int *,int *) ;
 int gtk_tree_model_row_inserted (int *,int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_new_from_indices (int ,int) ;




void uiTableModelNotify(uiTableModel *m, uiTableNotification notification, intmax_t row, intmax_t column)
{
 GtkTreeModel *model = GTK_TREE_MODEL(m);
 GtkTreePath *path;
 GtkTreeIter iter;

 path = gtk_tree_path_new_from_indices(row, -1);
 switch (notification) {
 case 128:
  if (gtk_tree_model_get_iter(model, &iter, path) == FALSE)
   complain("invalid row given to row inserted in uiTableModelNotify()");
  gtk_tree_model_row_inserted(model, path, &iter);
  break;
 case 129:
  gtk_tree_model_row_deleted(model, path);
  break;
 case 130:
  if (gtk_tree_model_get_iter(model, &iter, path) == FALSE)
   complain("invalid row given to row changed in uiTableModelNotify()");
  gtk_tree_model_row_changed(model, path, &iter);
  break;
 default:
  complain("unknown uiTable notification %d in uiTableModelNotify()", notification);
 }
 gtk_tree_path_free(path);
}
