
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiTableModel ;
struct TYPE_3__ {int user_data; int stamp; } ;
typedef int GtkTreePath ;
typedef TYPE_1__ GtkTreeIter ;


 int GINT_TO_POINTER (int) ;
 int GTK_TREE_MODEL (int *) ;
 int STAMP_GOOD ;
 int gtk_tree_model_row_inserted (int ,int *,TYPE_1__*) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_new_from_indices (int,int) ;

void uiTableModelRowInserted(uiTableModel *m, int newIndex)
{
 GtkTreePath *path;
 GtkTreeIter iter;

 path = gtk_tree_path_new_from_indices(newIndex, -1);
 iter.stamp = STAMP_GOOD;
 iter.user_data = GINT_TO_POINTER(newIndex);
 gtk_tree_model_row_inserted(GTK_TREE_MODEL(m), path, &iter);
 gtk_tree_path_free(path);
}
