
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkTreeModelFlags ;
typedef int GtkTreeModel ;


 int GTK_TREE_MODEL_LIST_ONLY ;

__attribute__((used)) static GtkTreeModelFlags uiTableModel_get_flags(GtkTreeModel *mm)
{
 return GTK_TREE_MODEL_LIST_ONLY;
}
