
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
typedef int xcb_char2b_t ;
struct TYPE_6__ {TYPE_1__* info; } ;
struct TYPE_7__ {TYPE_2__ xcb; } ;
struct TYPE_8__ {TYPE_3__ specific; } ;
struct TYPE_5__ {int font_ascent; } ;


 int conn ;
 scalar_t__ predict_text_width_xcb (int const*,int) ;
 TYPE_4__* savedFont ;
 int xcb_image_text_16 (int ,int,int ,int ,int,int,int const*) ;

__attribute__((used)) static void draw_text_xcb(const xcb_char2b_t *text, size_t text_len, xcb_drawable_t drawable,
                          xcb_gcontext_t gc, int x, int y) {

    int pos_y = y + savedFont->specific.xcb.info->font_ascent;



    int offset = 0;
    for (;;) {

        int chunk_size = (text_len > 255 ? 255 : text_len);
        const xcb_char2b_t *chunk = text + offset;


        xcb_image_text_16(conn, chunk_size, drawable, gc, x, pos_y, chunk);


        offset += chunk_size;
        text_len -= chunk_size;


        if (text_len == 0)
            break;


        x += predict_text_width_xcb(chunk, chunk_size);
    }
}
