
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pango_markup; } ;
typedef TYPE_1__ i3String ;


 int i3string_as_utf8 (TYPE_1__*) ;
 TYPE_1__* i3string_from_utf8 (int ) ;

i3String *i3string_copy(i3String *str) {
    i3String *copy = i3string_from_utf8(i3string_as_utf8(str));
    copy->pango_markup = str->pango_markup;
    return copy;
}
