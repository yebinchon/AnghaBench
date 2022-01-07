
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cr; } ;
typedef TYPE_1__ surface_t ;
struct TYPE_7__ {int alpha; int blue; int green; int red; } ;
typedef TYPE_2__ color_t ;


 int RETURN_UNLESS_SURFACE_INITIALIZED (TYPE_1__*) ;
 int cairo_set_source_rgba (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void draw_util_set_source_color(surface_t *surface, color_t color) {
    RETURN_UNLESS_SURFACE_INITIALIZED(surface);

    cairo_set_source_rgba(surface->cr, color.red, color.green, color.blue, color.alpha);
}
