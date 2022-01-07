
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pango_desc; } ;
struct TYPE_7__ {int type; int height; TYPE_1__ specific; } ;
typedef TYPE_2__ i3Font ;
typedef int gint ;
typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_8__ {int root; } ;
typedef int PangoLayout ;


 int ELOG (char*,char const*) ;
 int FONT_TYPE_PANGO ;
 int LOG (char*,int ,int) ;
 int PANGO_SCALE ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int cairo_surface_destroy (int *) ;
 int * cairo_xcb_surface_create (int ,int ,int ,int,int) ;
 int conn ;
 int * create_layout_with_dpi (int *) ;
 int g_object_unref (int *) ;
 int get_visualtype (TYPE_3__*) ;
 int pango_font_description_from_string (char const*) ;
 int pango_font_description_get_family (int ) ;
 int pango_font_description_get_size (int ) ;
 int pango_layout_get_pixel_size (int *,int *,int *) ;
 int pango_layout_set_font_description (int *,int ) ;
 TYPE_3__* root_screen ;
 int root_visual_type ;

__attribute__((used)) static bool load_pango_font(i3Font *font, const char *desc) {

    font->specific.pango_desc = pango_font_description_from_string(desc);
    if (!font->specific.pango_desc) {
        ELOG("Could not open font %s with Pango, fallback to X font.\n", desc);
        return 0;
    }

    LOG("Using Pango font %s, size %d\n",
        pango_font_description_get_family(font->specific.pango_desc),
        pango_font_description_get_size(font->specific.pango_desc) / PANGO_SCALE);




    root_visual_type = get_visualtype(root_screen);


    cairo_surface_t *surface = cairo_xcb_surface_create(conn, root_screen->root, root_visual_type, 1, 1);
    cairo_t *cr = cairo_create(surface);
    PangoLayout *layout = create_layout_with_dpi(cr);
    pango_layout_set_font_description(layout, font->specific.pango_desc);


    gint height;
    pango_layout_get_pixel_size(layout, ((void*)0), &height);
    font->height = height;


    g_object_unref(layout);
    cairo_destroy(cr);
    cairo_surface_destroy(surface);


    font->type = FONT_TYPE_PANGO;
    return 1;
}
