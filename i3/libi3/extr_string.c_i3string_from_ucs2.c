
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_char2b_t ;
struct TYPE_3__ {size_t num_glyphs; scalar_t__ num_bytes; int * utf8; void* ucs2; } ;
typedef TYPE_1__ i3String ;


 int memcpy (void*,int const*,size_t) ;
 void* scalloc (size_t,int) ;

i3String *i3string_from_ucs2(const xcb_char2b_t *from_ucs2, size_t num_glyphs) {
    i3String *str = scalloc(1, sizeof(i3String));


    str->ucs2 = scalloc(num_glyphs, sizeof(xcb_char2b_t));
    memcpy(str->ucs2, from_ucs2, num_glyphs * sizeof(xcb_char2b_t));


    str->num_glyphs = num_glyphs;

    str->utf8 = ((void*)0);
    str->num_bytes = 0;

    return str;
}
