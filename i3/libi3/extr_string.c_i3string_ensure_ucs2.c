
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_glyphs; int utf8; int * ucs2; } ;
typedef TYPE_1__ i3String ;


 int * convert_utf8_to_ucs2 (int ,int *) ;

__attribute__((used)) static void i3string_ensure_ucs2(i3String *str) {
    if (str->ucs2 != ((void*)0))
        return;
    str->ucs2 = convert_utf8_to_ucs2(str->utf8, &str->num_glyphs);
}
