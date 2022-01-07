
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stamp; int user_data; } ;
typedef int GtkTreePath ;
typedef int GtkTreeModel ;
typedef TYPE_1__ GtkTreeIter ;


 int FROM (int ) ;
 scalar_t__ GOOD_STAMP ;
 int * gtk_tree_path_new_from_indices (int ,int) ;

__attribute__((used)) static GtkTreePath *uiTableModel_get_path(GtkTreeModel *mb, GtkTreeIter *iter)
{

 if (iter->stamp != GOOD_STAMP)
  return ((void*)0);
 return gtk_tree_path_new_from_indices(FROM(iter->user_data), -1);
}
