
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv; } ;
typedef TYPE_1__ uiTable ;
typedef int GtkTreeViewColumn ;


 int TRUE ;
 int gtk_tree_view_append_column (int ,int *) ;
 int * gtk_tree_view_column_new () ;
 int gtk_tree_view_column_set_resizable (int *,int ) ;
 int gtk_tree_view_column_set_title (int *,char const*) ;

__attribute__((used)) static GtkTreeViewColumn *addColumn(uiTable *t, const char *name)
{
 GtkTreeViewColumn *c;

 c = gtk_tree_view_column_new();
 gtk_tree_view_column_set_resizable(c, TRUE);
 gtk_tree_view_column_set_title(c, name);
 gtk_tree_view_append_column(t->tv, c);
 return c;
}
