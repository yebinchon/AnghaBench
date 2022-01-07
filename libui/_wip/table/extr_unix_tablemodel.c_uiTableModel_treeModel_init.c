
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iter_parent; int iter_nth_child; int iter_n_children; int iter_has_child; int iter_children; int iter_previous; int iter_next; int get_value; int get_path; int get_iter; int get_column_type; int get_n_columns; int get_flags; } ;
typedef TYPE_1__ GtkTreeModelIface ;


 int uiTableModel_get_column_type ;
 int uiTableModel_get_flags ;
 int uiTableModel_get_iter ;
 int uiTableModel_get_n_columns ;
 int uiTableModel_get_path ;
 int uiTableModel_get_value ;
 int uiTableModel_iter_children ;
 int uiTableModel_iter_has_child ;
 int uiTableModel_iter_n_children ;
 int uiTableModel_iter_next ;
 int uiTableModel_iter_nth_child ;
 int uiTableModel_iter_parent ;
 int uiTableModel_iter_previous ;

__attribute__((used)) static void uiTableModel_treeModel_init(GtkTreeModelIface *iface)
{
 iface->get_flags = uiTableModel_get_flags;
 iface->get_n_columns = uiTableModel_get_n_columns;
 iface->get_column_type = uiTableModel_get_column_type;
 iface->get_iter = uiTableModel_get_iter;
 iface->get_path = uiTableModel_get_path;
 iface->get_value = uiTableModel_get_value;
 iface->iter_next = uiTableModel_iter_next;
 iface->iter_previous = uiTableModel_iter_previous;
 iface->iter_children = uiTableModel_iter_children;
 iface->iter_has_child = uiTableModel_iter_has_child;
 iface->iter_n_children = uiTableModel_iter_n_children;
 iface->iter_nth_child = uiTableModel_iter_nth_child;
 iface->iter_parent = uiTableModel_iter_parent;

}
