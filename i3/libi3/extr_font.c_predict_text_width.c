
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int i3String ;
struct TYPE_2__ {int type; } ;





 int assert (int) ;
 int i3string_as_ucs2 (int *) ;
 int i3string_as_utf8 (int *) ;
 int i3string_get_num_bytes (int *) ;
 int i3string_get_num_glyphs (int *) ;
 int i3string_is_markup (int *) ;
 int predict_text_width_pango (int ,int ,int ) ;
 int predict_text_width_xcb (int ,int ) ;
 TYPE_1__* savedFont ;

int predict_text_width(i3String *text) {
    assert(savedFont != ((void*)0));

    switch (savedFont->type) {
        case 130:

            return 0;
        case 128:
            return predict_text_width_xcb(i3string_as_ucs2(text), i3string_get_num_glyphs(text));
        case 129:

            return predict_text_width_pango(i3string_as_utf8(text), i3string_get_num_bytes(text),
                                            i3string_is_markup(text));
    }
    assert(0);
}
