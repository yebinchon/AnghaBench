
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_3__ {int * cr; int * surface; int gc; } ;
typedef TYPE_1__ surface_t ;


 int cairo_destroy (int *) ;
 int cairo_surface_destroy (int *) ;
 int xcb_free_gc (int *,int ) ;

void draw_util_surface_free(xcb_connection_t *conn, surface_t *surface) {
    xcb_free_gc(conn, surface->gc);
    cairo_surface_destroy(surface->surface);
    cairo_destroy(surface->cr);




    surface->surface = ((void*)0);
    surface->cr = ((void*)0);
}
