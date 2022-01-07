
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backgroundColumn; } ;
typedef TYPE_1__ uiTable ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;


 int applyColor (int *,int *,int,int *,char*,char*) ;

__attribute__((used)) static void applyBackgroundColor(uiTable *t, GtkTreeModel *m, GtkTreeIter *iter, GtkCellRenderer *r)
{
 if (t->backgroundColumn != -1)
  applyColor(m, iter, t->backgroundColumn,
   r, "cell-background-rgba", "cell-background-set");
}
