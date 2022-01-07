
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gint ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_6__ {int root; } ;
struct TYPE_4__ {int pango_desc; } ;
struct TYPE_5__ {TYPE_1__ specific; } ;
typedef int PangoLayout ;


 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int cairo_surface_destroy (int *) ;
 int * cairo_xcb_surface_create (int ,int ,int ,int,int) ;
 int conn ;
 int * create_layout_with_dpi (int *) ;
 int g_object_unref (int *) ;
 int pango_cairo_update_layout (int *,int *) ;
 int pango_layout_get_pixel_size (int *,int*,int *) ;
 int pango_layout_set_font_description (int *,int ) ;
 int pango_layout_set_markup (int *,char const*,size_t) ;
 int pango_layout_set_text (int *,char const*,size_t) ;
 TYPE_3__* root_screen ;
 int root_visual_type ;
 TYPE_2__* savedFont ;

__attribute__((used)) static int predict_text_width_pango(const char *text, size_t text_len, bool pango_markup) {


    cairo_surface_t *surface = cairo_xcb_surface_create(conn, root_screen->root, root_visual_type, 1, 1);
    cairo_t *cr = cairo_create(surface);
    PangoLayout *layout = create_layout_with_dpi(cr);


    gint width;
    pango_layout_set_font_description(layout, savedFont->specific.pango_desc);

    if (pango_markup)
        pango_layout_set_markup(layout, text, text_len);
    else
        pango_layout_set_text(layout, text, text_len);

    pango_cairo_update_layout(cr, layout);
    pango_layout_get_pixel_size(layout, &width, ((void*)0));


    g_object_unref(layout);
    cairo_destroy(cr);
    cairo_surface_destroy(surface);

    return width;
}
