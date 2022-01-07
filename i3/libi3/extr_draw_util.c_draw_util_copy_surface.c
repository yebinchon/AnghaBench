
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cr; int surface; } ;
typedef TYPE_1__ surface_t ;


 int CAIRO_OPERATOR_SOURCE ;
 int CAIRO_SURFACE_FLUSH (int ) ;
 int RETURN_UNLESS_SURFACE_INITIALIZED (TYPE_1__*) ;
 int cairo_fill (int ) ;
 int cairo_rectangle (int ,double,double,double,double) ;
 int cairo_restore (int ) ;
 int cairo_save (int ) ;
 int cairo_set_operator (int ,int ) ;
 int cairo_set_source_surface (int ,int ,double,double) ;

void draw_util_copy_surface(surface_t *src, surface_t *dest, double src_x, double src_y,
                            double dest_x, double dest_y, double width, double height) {
    RETURN_UNLESS_SURFACE_INITIALIZED(src);
    RETURN_UNLESS_SURFACE_INITIALIZED(dest);

    cairo_save(dest->cr);




    cairo_set_operator(dest->cr, CAIRO_OPERATOR_SOURCE);
    cairo_set_source_surface(dest->cr, src->surface, dest_x - src_x, dest_y - src_y);

    cairo_rectangle(dest->cr, dest_x, dest_y, width, height);
    cairo_fill(dest->cr);



    CAIRO_SURFACE_FLUSH(src->surface);
    CAIRO_SURFACE_FLUSH(dest->surface);

    cairo_restore(dest->cr);
}
