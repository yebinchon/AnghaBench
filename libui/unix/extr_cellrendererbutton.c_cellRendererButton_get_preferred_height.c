
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int GtkWidget ;
typedef int GtkCellRenderer ;


 int gtk_cell_renderer_get_preferred_height_for_width (int *,int *,int ,int *,int *) ;
 int gtk_cell_renderer_get_preferred_width (int *,int *,int *,int *) ;

__attribute__((used)) static void cellRendererButton_get_preferred_height(GtkCellRenderer *r, GtkWidget *widget, gint *minimum, gint *natural)
{
 gint width;

 gtk_cell_renderer_get_preferred_width(r, widget, &width, ((void*)0));
 gtk_cell_renderer_get_preferred_height_for_width(r, widget, width, minimum, natural);
}
