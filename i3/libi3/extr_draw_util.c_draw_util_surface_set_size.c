
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int surface; } ;
typedef TYPE_1__ surface_t ;


 int cairo_xcb_surface_set_size (int ,int,int) ;

void draw_util_surface_set_size(surface_t *surface, int width, int height) {
    surface->width = width;
    surface->height = height;
    cairo_xcb_surface_set_size(surface->surface, width, height);
}
