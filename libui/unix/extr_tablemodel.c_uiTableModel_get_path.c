
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gint ;
struct TYPE_3__ {scalar_t__ stamp; int user_data; } ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef TYPE_1__ GtkTreeIter ;


 int GPOINTER_TO_INT (int ) ;
 scalar_t__ STAMP_GOOD ;
 int * gtk_tree_path_new_from_indices (int ,int) ;

__attribute__((used)) static GtkTreePath *uiTableModel_get_path(GtkTreeModel *mm, GtkTreeIter *iter)
{
 gint row;

 if (iter->stamp != STAMP_GOOD)
  return ((void*)0);
 row = GPOINTER_TO_INT(iter->user_data);
 return gtk_tree_path_new_from_indices(row, -1);
}
