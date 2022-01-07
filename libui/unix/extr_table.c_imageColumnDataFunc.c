
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiImage ;
struct imageColumnParams {TYPE_1__* t; int modelColumn; } ;
typedef scalar_t__ gpointer ;
struct TYPE_2__ {int treeWidget; } ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;
typedef int GValue ;


 int G_VALUE_INIT ;
 int applyBackgroundColor (TYPE_1__*,int *,int *,int *) ;
 int g_object_set (int *,char*,int ,int *) ;
 scalar_t__ g_value_get_pointer (int *) ;
 int g_value_unset (int *) ;
 int gtk_tree_model_get_value (int *,int *,int ,int *) ;
 int uiprivImageAppropriateSurface (int *,int ) ;

__attribute__((used)) static void imageColumnDataFunc(GtkTreeViewColumn *c, GtkCellRenderer *r, GtkTreeModel *m, GtkTreeIter *iter, gpointer data)
{
 struct imageColumnParams *p = (struct imageColumnParams *) data;
 GValue value = G_VALUE_INIT;
 uiImage *img;


 gtk_tree_model_get_value(m, iter, p->modelColumn, &value);
 img = (uiImage *) g_value_get_pointer(&value);
 g_object_set(r, "surface",
  uiprivImageAppropriateSurface(img, p->t->treeWidget),
  ((void*)0));
 g_value_unset(&value);

 applyBackgroundColor(p->t, m, iter, r);
}
