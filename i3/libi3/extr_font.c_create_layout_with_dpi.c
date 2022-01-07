
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cairo_t ;
typedef int PangoLayout ;
typedef int PangoContext ;


 int g_object_unref (int *) ;
 int get_dpi_value () ;
 int pango_cairo_context_set_resolution (int *,int ) ;
 int * pango_cairo_create_context (int *) ;
 int * pango_layout_new (int *) ;

__attribute__((used)) static PangoLayout *create_layout_with_dpi(cairo_t *cr) {
    PangoLayout *layout;
    PangoContext *context;

    context = pango_cairo_create_context(cr);
    pango_cairo_context_set_resolution(context, get_dpi_value());
    layout = pango_layout_new(context);
    g_object_unref(context);

    return layout;
}
