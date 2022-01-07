
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (char*) ;
 int font_is_pango () ;
 char* g_markup_escape_text (char*,int) ;

char *pango_escape_markup(char *input) {
    if (!font_is_pango())
        return input;

    char *escaped = g_markup_escape_text(input, -1);
    FREE(input);

    return escaped;
}
