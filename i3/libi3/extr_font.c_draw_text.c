
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xcb_visualtype_t ;
typedef int xcb_gcontext_t ;
typedef int xcb_drawable_t ;
typedef int i3String ;
struct TYPE_2__ {int type; } ;





 int assert (int ) ;
 int draw_text_pango (int ,int ,int ,int *,int,int,int,int ) ;
 int draw_text_xcb (int ,int ,int ,int ,int,int) ;
 int i3string_as_ucs2 (int *) ;
 int i3string_as_utf8 (int *) ;
 int i3string_get_num_bytes (int *) ;
 int i3string_get_num_glyphs (int *) ;
 int i3string_is_markup (int *) ;
 int * root_visual_type ;
 TYPE_1__* savedFont ;

void draw_text(i3String *text, xcb_drawable_t drawable, xcb_gcontext_t gc,
               xcb_visualtype_t *visual, int x, int y, int max_width) {
    assert(savedFont != ((void*)0));
    if (visual == ((void*)0)) {
        visual = root_visual_type;
    }

    switch (savedFont->type) {
        case 130:

            return;
        case 128:
            draw_text_xcb(i3string_as_ucs2(text), i3string_get_num_glyphs(text),
                          drawable, gc, x, y);
            break;
        case 129:

            draw_text_pango(i3string_as_utf8(text), i3string_get_num_bytes(text),
                            drawable, visual, x, y, max_width, i3string_is_markup(text));
            return;
    }
}
