
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pango_markup; } ;
typedef TYPE_1__ i3String ;


 TYPE_1__* i3string_from_utf8 (char const*) ;

i3String *i3string_from_markup(const char *from_markup) {
    i3String *str = i3string_from_utf8(from_markup);


    str->pango_markup = 1;

    return str;
}
