
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int surface; int visual_type; int gc; int id; } ;
typedef TYPE_1__ surface_t ;
typedef int i3String ;
typedef int color_t ;


 int CAIRO_SURFACE_FLUSH (int ) ;
 int RETURN_UNLESS_SURFACE_INITIALIZED (TYPE_1__*) ;
 int cairo_surface_mark_dirty (int ) ;
 int draw_text (int *,int ,int ,int ,int,int,int) ;
 int set_font_colors (int ,int ,int ) ;

void draw_util_text(i3String *text, surface_t *surface, color_t fg_color, color_t bg_color, int x, int y, int max_width) {
    RETURN_UNLESS_SURFACE_INITIALIZED(surface);


    CAIRO_SURFACE_FLUSH(surface->surface);

    set_font_colors(surface->gc, fg_color, bg_color);
    draw_text(text, surface->id, surface->gc, surface->visual_type, x, y, max_width);


    cairo_surface_mark_dirty(surface->surface);
}
