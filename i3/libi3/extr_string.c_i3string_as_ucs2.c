
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_char2b_t ;
struct TYPE_4__ {int const* ucs2; } ;
typedef TYPE_1__ i3String ;


 int i3string_ensure_ucs2 (TYPE_1__*) ;

const xcb_char2b_t *i3string_as_ucs2(i3String *str) {
    i3string_ensure_ucs2(str);
    return str->ucs2;
}
