
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_bytes; } ;
typedef TYPE_1__ i3String ;


 int i3string_ensure_utf8 (TYPE_1__*) ;

size_t i3string_get_num_bytes(i3String *str) {
    i3string_ensure_utf8(str);
    return str->num_bytes;
}
