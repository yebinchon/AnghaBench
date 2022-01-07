
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buttonColumnParams {int modelColumn; int m; } ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int GtkCellRenderer ;


 int onEdited (int ,int ,int *,int *,int *) ;

__attribute__((used)) static void buttonColumnClicked(GtkCellRenderer *r, gchar *pathstr, gpointer data)
{
 struct buttonColumnParams *p = (struct buttonColumnParams *) data;

 onEdited(p->m, p->modelColumn, pathstr, ((void*)0), ((void*)0));
}
