
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i3String ;


 int free (char*) ;
 char* g_markup_escape_text (char const*,int) ;
 char* i3string_as_utf8 (int *) ;
 int * i3string_from_utf8 (char*) ;

i3String *i3string_escape_markup(i3String *str) {
    const char *text = i3string_as_utf8(str);
    char *escaped = g_markup_escape_text(text, -1);
    i3String *result = i3string_from_utf8(escaped);
    free(escaped);
    return result;
}
