
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {size_t num_bytes; int utf8; } ;
typedef TYPE_1__ i3String ;


 int g_utf8_make_valid (char const*,scalar_t__) ;
 TYPE_1__* scalloc (int,int) ;
 size_t strlen (int ) ;

i3String *i3string_from_utf8_with_length(const char *from_utf8, ssize_t num_bytes) {
    i3String *str = scalloc(1, sizeof(i3String));


    str->utf8 = g_utf8_make_valid(from_utf8, num_bytes);


    str->num_bytes = num_bytes < 0 ? strlen(str->utf8) : (size_t)num_bytes;

    return str;
}
