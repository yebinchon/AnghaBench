
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkTreeViewColumn ;
typedef int GtkTreeModel ;
typedef int GtkTreeIter ;
typedef int GtkCellRenderer ;


 int G_MAXINT ;
 int g_object_set (int *,char*,int,char*,...) ;
 int pbarStarted ;
 int pbarValue ;

__attribute__((used)) static void pbarDataFunc(GtkTreeViewColumn *col, GtkCellRenderer *r, GtkTreeModel *m, GtkTreeIter *iter, gpointer data)
{
 if (!pbarStarted) {
  g_object_set(r,
   "pulse", -1,
   "value", 0,
   ((void*)0));
  return;
 }
 pbarValue++;
 if (pbarValue == G_MAXINT)
  pbarValue = 1;
 g_object_set(r, "pulse", pbarValue, ((void*)0));
}
