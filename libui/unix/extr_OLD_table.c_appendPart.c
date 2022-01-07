
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parts; int c; } ;
typedef TYPE_1__ uiTableColumn ;
struct tablePart {int * r; } ;
typedef int GtkCellRenderer ;


 int dataFunc ;
 int g_ptr_array_add (int ,struct tablePart*) ;
 int gtk_tree_view_column_pack_start (int ,int *,int) ;
 int gtk_tree_view_column_set_cell_data_func (int ,int *,int ,struct tablePart*,int *) ;

__attribute__((used)) static void appendPart(uiTableColumn *c, struct tablePart *part, GtkCellRenderer *r, int expand)
{
 part->r = r;
 gtk_tree_view_column_pack_start(c->c, part->r, expand != 0);
 gtk_tree_view_column_set_cell_data_func(c->c, part->r, dataFunc, part, ((void*)0));
 g_ptr_array_add(c->parts, part);
}
