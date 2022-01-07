
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_gcontext_t ;
typedef int xcb_drawable_t ;
typedef int i3String ;
struct TYPE_6__ {TYPE_1__* info; } ;
struct TYPE_7__ {TYPE_2__ xcb; } ;
struct TYPE_8__ {int type; TYPE_3__ specific; } ;
struct TYPE_5__ {int font_ascent; } ;





 int assert (int ) ;
 int conn ;
 int draw_text (int *,int ,int ,int *,int,int,int) ;
 int draw_text_pango (char const*,size_t,int ,int ,int,int,int,int) ;
 int i3string_free (int *) ;
 int * i3string_from_utf8 (char const*) ;
 int root_visual_type ;
 TYPE_4__* savedFont ;
 size_t strlen (char const*) ;
 int xcb_image_text_8 (int ,size_t,int ,int ,int,int,char const*) ;

void draw_text_ascii(const char *text, xcb_drawable_t drawable,
                     xcb_gcontext_t gc, int x, int y, int max_width) {
    assert(savedFont != ((void*)0));

    switch (savedFont->type) {
        case 130:

            return;
        case 128: {
            size_t text_len = strlen(text);
            if (text_len > 255) {

                i3String *str = i3string_from_utf8(text);
                draw_text(str, drawable, gc, ((void*)0), x, y, max_width);
                i3string_free(str);
            } else {

                int pos_y = y + savedFont->specific.xcb.info->font_ascent;

                xcb_image_text_8(conn, text_len, drawable, gc, x, pos_y, text);
            }
            break;
        }
        case 129:

            draw_text_pango(text, strlen(text),
                            drawable, root_visual_type, x, y, max_width, 0);
            return;
    }
}
