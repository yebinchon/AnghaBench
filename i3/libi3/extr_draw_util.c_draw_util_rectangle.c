
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cr; int surface; } ;
typedef TYPE_1__ surface_t ;
typedef int color_t ;


 int CAIRO_OPERATOR_SOURCE ;
 int CAIRO_SURFACE_FLUSH (int ) ;
 int RETURN_UNLESS_SURFACE_INITIALIZED (TYPE_1__*) ;
 int cairo_fill (int ) ;
 int cairo_rectangle (int ,double,double,double,double) ;
 int cairo_restore (int ) ;
 int cairo_save (int ) ;
 int cairo_set_operator (int ,int ) ;
 int draw_util_set_source_color (TYPE_1__*,int ) ;

void draw_util_rectangle(surface_t *surface, color_t color, double x, double y, double w, double h) {
    RETURN_UNLESS_SURFACE_INITIALIZED(surface);

    cairo_save(surface->cr);




    cairo_set_operator(surface->cr, CAIRO_OPERATOR_SOURCE);
    draw_util_set_source_color(surface, color);

    cairo_rectangle(surface->cr, x, y, w, h);
    cairo_fill(surface->cr);



    CAIRO_SURFACE_FLUSH(surface->surface);

    cairo_restore(surface->cr);
}
