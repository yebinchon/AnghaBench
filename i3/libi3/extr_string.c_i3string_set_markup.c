
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pango_markup; } ;
typedef TYPE_1__ i3String ;



void i3string_set_markup(i3String *str, bool pango_markup) {
    str->pango_markup = pango_markup;
}
