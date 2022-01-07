
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_utf8_locale () ;
 int strlen (char const*) ;
 int utf8_strwidth (char const*) ;

int gettext_width(const char *s)
{
 static int is_utf8 = -1;
 if (is_utf8 == -1)
  is_utf8 = is_utf8_locale();

 return is_utf8 ? utf8_strwidth(s) : strlen(s);
}
