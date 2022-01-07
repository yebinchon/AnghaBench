
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gint ;
typedef double gfloat ;
typedef int cellRendererButton ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int width; int height; } ;
typedef TYPE_1__ PangoRectangle ;
typedef int PangoLayout ;
typedef int GtkWidget ;
typedef TYPE_2__ GdkRectangle ;


 int GTK_CELL_RENDERER (int *) ;
 scalar_t__ GTK_TEXT_DIR_RTL ;
 int gtk_cell_renderer_get_alignment (int ,double*,double*) ;
 int gtk_cell_renderer_get_padding (int ,int*,int*) ;
 scalar_t__ gtk_widget_get_direction (int *) ;
 int pango_layout_get_pixel_extents (int *,int *,TYPE_1__*) ;

__attribute__((used)) static void cellRendererButtonSize(cellRendererButton *c, GtkWidget *widget, PangoLayout *layout, const GdkRectangle *cell_area, gint *xoff, gint *yoff, gint *width, gint *height)
{
 PangoRectangle rect;
 gint xpad, ypad;
 gfloat xalign, yalign;

 gtk_cell_renderer_get_padding(GTK_CELL_RENDERER(c), &xpad, &ypad);
 pango_layout_get_pixel_extents(layout, ((void*)0), &rect);
 if (rect.width > cell_area->width - (2 * xpad))
  rect.width = cell_area->width - (2 * xpad);
 if (rect.height > cell_area->height - (2 * ypad))
  rect.height = cell_area->height - (2 * ypad);

 gtk_cell_renderer_get_alignment(GTK_CELL_RENDERER(c), &xalign, &yalign);
 if (gtk_widget_get_direction(widget) == GTK_TEXT_DIR_RTL)
  xalign = 1.0 - xalign;
 if (xoff != ((void*)0)) {
  *xoff = cell_area->width - (rect.width + (2 * xpad));
  *xoff = (gint) ((gfloat) (*xoff) * xalign);
 }
 if (yoff != ((void*)0)) {
  *yoff = cell_area->height - (rect.height + (2 * ypad));
  *yoff = (gint) ((gfloat) (*yoff) * yalign);
  if (*yoff < 0)
   *yoff = 0;
 }
 if (width != ((void*)0))
  *width = rect.width - (2 * xpad);
 if (height != ((void*)0))
  *height = rect.height - (2 * ypad);
}
