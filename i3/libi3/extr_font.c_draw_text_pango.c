
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_visualtype_t ;
typedef int xcb_drawable_t ;
typedef int gint ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_3__ {int pango_desc; } ;
struct TYPE_4__ {int height; TYPE_1__ specific; } ;
typedef int PangoLayout ;


 int CAIRO_OPERATOR_SOURCE ;
 int PANGO_ELLIPSIZE_END ;
 int PANGO_SCALE ;
 int PANGO_WRAP_CHAR ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int cairo_move_to (int *,int,int) ;
 int cairo_set_operator (int *,int ) ;
 int cairo_set_source_rgba (int *,int ,int ,int ,int ) ;
 int cairo_surface_destroy (int *) ;
 int * cairo_xcb_surface_create (int ,int ,int *,int,int) ;
 int conn ;
 int * create_layout_with_dpi (int *) ;
 int g_object_unref (int *) ;
 int pango_cairo_show_layout (int *,int *) ;
 int pango_cairo_update_layout (int *,int *) ;
 int pango_font_alpha ;
 int pango_font_blue ;
 int pango_font_green ;
 int pango_font_red ;
 int pango_layout_get_pixel_size (int *,int *,int*) ;
 int pango_layout_set_ellipsize (int *,int ) ;
 int pango_layout_set_font_description (int *,int ) ;
 int pango_layout_set_markup (int *,char const*,size_t) ;
 int pango_layout_set_text (int *,char const*,size_t) ;
 int pango_layout_set_width (int *,int) ;
 int pango_layout_set_wrap (int *,int ) ;
 TYPE_2__* savedFont ;

__attribute__((used)) static void draw_text_pango(const char *text, size_t text_len,
                            xcb_drawable_t drawable, xcb_visualtype_t *visual, int x, int y,
                            int max_width, bool pango_markup) {


    cairo_surface_t *surface = cairo_xcb_surface_create(conn, drawable,
                                                        visual, x + max_width, y + savedFont->height);
    cairo_t *cr = cairo_create(surface);
    PangoLayout *layout = create_layout_with_dpi(cr);
    gint height;

    pango_layout_set_font_description(layout, savedFont->specific.pango_desc);
    pango_layout_set_width(layout, max_width * PANGO_SCALE);
    pango_layout_set_wrap(layout, PANGO_WRAP_CHAR);
    pango_layout_set_ellipsize(layout, PANGO_ELLIPSIZE_END);

    if (pango_markup)
        pango_layout_set_markup(layout, text, text_len);
    else
        pango_layout_set_text(layout, text, text_len);


    cairo_set_operator(cr, CAIRO_OPERATOR_SOURCE);
    cairo_set_source_rgba(cr, pango_font_red, pango_font_green, pango_font_blue, pango_font_alpha);
    pango_cairo_update_layout(cr, layout);
    pango_layout_get_pixel_size(layout, ((void*)0), &height);

    int yoffset = (height - savedFont->height) / 2;
    cairo_move_to(cr, x, y - yoffset);
    pango_cairo_show_layout(cr, layout);


    g_object_unref(layout);
    cairo_destroy(cr);
    cairo_surface_destroy(surface);
}
