
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;


 int gtk_tree_model_iter_nth_child (int *,int *,int *,int ) ;

__attribute__((used)) static gboolean uiTableModel_iter_children(GtkTreeModel *mm, GtkTreeIter *iter, GtkTreeIter *parent)
{
 return gtk_tree_model_iter_nth_child(mm, iter, parent, 0);
}
