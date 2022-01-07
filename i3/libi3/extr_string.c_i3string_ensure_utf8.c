
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * utf8; int num_bytes; int num_glyphs; int ucs2; } ;
typedef TYPE_1__ i3String ;


 int * convert_ucs2_to_utf8 (int ,int ) ;
 int strlen (int *) ;

__attribute__((used)) static void i3string_ensure_utf8(i3String *str) {
    if (str->utf8 != ((void*)0))
        return;
    if ((str->utf8 = convert_ucs2_to_utf8(str->ucs2, str->num_glyphs)) != ((void*)0))
        str->num_bytes = strlen(str->utf8);
}
