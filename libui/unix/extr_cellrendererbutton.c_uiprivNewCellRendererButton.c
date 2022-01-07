
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkCellRenderer ;


 int * GTK_CELL_RENDERER (int ) ;
 int cellRendererButtonType ;
 int g_object_new (int ,int *) ;

GtkCellRenderer *uiprivNewCellRendererButton(void)
{
 return GTK_CELL_RENDERER(g_object_new(cellRendererButtonType, ((void*)0)));
}
