
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text; } ;
typedef TYPE_1__ cellRendererButton ;
typedef int PangoLayout ;
typedef int GtkWidget ;


 int PANGO_ALIGN_CENTER ;
 int PANGO_ELLIPSIZE_NONE ;
 int PANGO_WRAP_CHAR ;
 int * gtk_widget_create_pango_layout (int *,int ) ;
 int pango_layout_set_alignment (int *,int ) ;
 int pango_layout_set_ellipsize (int *,int ) ;
 int pango_layout_set_width (int *,int) ;
 int pango_layout_set_wrap (int *,int ) ;

__attribute__((used)) static PangoLayout *cellRendererButtonPangoLayout(cellRendererButton *c, GtkWidget *widget)
{
 PangoLayout *layout;

 layout = gtk_widget_create_pango_layout(widget, c->text);
 pango_layout_set_ellipsize(layout, PANGO_ELLIPSIZE_NONE);
 pango_layout_set_width(layout, -1);
 pango_layout_set_wrap(layout, PANGO_WRAP_CHAR);
 pango_layout_set_alignment(layout, PANGO_ALIGN_CENTER);
 return layout;
}
