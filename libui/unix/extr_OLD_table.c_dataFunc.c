
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiImage ;
struct tablePart {int type; int colorColumn; TYPE_1__* tv; int valueColumn; int textColumn; int imageColumn; } ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
struct TYPE_2__ {int backgroundColumn; int treeWidget; } ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;
typedef int GValue ;


 int G_VALUE_INIT ;
 int applyColor (int *,int *,int,int *,char*,char*) ;
 int g_object_set (int *,char*,int,char*,...) ;
 int g_value_get_int (int *) ;
 scalar_t__ g_value_get_pointer (int *) ;
 int * g_value_get_string (int *) ;
 int g_value_unset (int *) ;
 int gtk_tree_model_get_value (int *,int *,int ,int *) ;





 int uiprivImageAppropriateSurface (int *,int ) ;

__attribute__((used)) static void dataFunc(GtkTreeViewColumn *c, GtkCellRenderer *r, GtkTreeModel *mm, GtkTreeIter *iter, gpointer data)
{
 struct tablePart *part = (struct tablePart *) data;
 GValue value = G_VALUE_INIT;
 const gchar *str;
 uiImage *img;
 int pval;

 switch (part->type) {
 case 128:
  gtk_tree_model_get_value(mm, iter, part->textColumn, &value);
  str = g_value_get_string(&value);
  g_object_set(r, "text", str, ((void*)0));
  if (part->colorColumn != -1)
   applyColor(mm, iter,
    part->colorColumn,
    r, "foreground-rgba", "foreground-set");
  break;
 case 130:

  gtk_tree_model_get_value(mm, iter, part->imageColumn, &value);
  img = (uiImage *) g_value_get_pointer(&value);
  g_object_set(r, "surface",
   uiprivImageAppropriateSurface(img, part->tv->treeWidget),
   ((void*)0));
  break;
 case 132:
  gtk_tree_model_get_value(mm, iter, part->textColumn, &value);
  str = g_value_get_string(&value);
  g_object_set(r, "text", str, ((void*)0));
  break;
 case 131:
  gtk_tree_model_get_value(mm, iter, part->valueColumn, &value);
  g_object_set(r, "active", g_value_get_int(&value) != 0, ((void*)0));
  break;
 case 129:
  gtk_tree_model_get_value(mm, iter, part->valueColumn, &value);
  pval = g_value_get_int(&value);
  if (pval == -1) {

  } else
   g_object_set(r,
    "pulse", -1,
    "value", pval,
    ((void*)0));
  break;
 }
 g_value_unset(&value);

 if (part->tv->backgroundColumn != -1)
  applyColor(mm, iter,
   part->tv->backgroundColumn,
   r, "cell-background-rgba", "cell-background-set");
}
