
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int GtkCellRenderer ;


 scalar_t__ FALSE ;
 int GTK_ICON_SIZE_MENU ;
 int MAX (int,int) ;
 int gtk_cell_renderer_get_padding (int *,int*,int*) ;
 int gtk_cell_renderer_set_fixed_size (int *,int,int) ;
 scalar_t__ gtk_icon_size_lookup (int ,int*,int*) ;

__attribute__((used)) static void setImageSize(GtkCellRenderer *r)
{
 gint size;
 gint width, height;
 gint xpad, ypad;

 size = 16;
 if (gtk_icon_size_lookup(GTK_ICON_SIZE_MENU, &width, &height) != FALSE)
  size = MAX(width, height);
 gtk_cell_renderer_get_padding(r, &xpad, &ypad);
 gtk_cell_renderer_set_fixed_size(r,
  2 * xpad + size,
  2 * ypad + size);
}
