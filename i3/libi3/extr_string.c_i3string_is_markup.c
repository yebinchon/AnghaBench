
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pango_markup; } ;
typedef TYPE_1__ i3String ;



bool i3string_is_markup(i3String *str) {
    return str->pango_markup;
}
