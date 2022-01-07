
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cellRendererButton ;


 int GTK_CELL_RENDERER (int *) ;
 int GTK_CELL_RENDERER_MODE_ACTIVATABLE ;
 int g_object_set (int *,char*,int ,int *) ;
 int gtk_cell_renderer_set_padding (int ,int,int) ;

__attribute__((used)) static void cellRendererButton_init(cellRendererButton *c)
{
 g_object_set(c, "mode", GTK_CELL_RENDERER_MODE_ACTIVATABLE, ((void*)0));

 gtk_cell_renderer_set_padding(GTK_CELL_RENDERER(c), 2, 2);
}
