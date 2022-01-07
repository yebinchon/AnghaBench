
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i3String ;


 int * i3string_from_utf8_with_length (char const*,int) ;

i3String *i3string_from_utf8(const char *from_utf8) {
    return i3string_from_utf8_with_length(from_utf8, -1);
}
