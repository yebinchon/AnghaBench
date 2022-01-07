
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int display_mode_esc_sequence_len (char const*) ;
 int strlen (char const*) ;
 scalar_t__ utf8_width (char const**,int *) ;

int utf8_strnwidth(const char *string, int len, int skip_ansi)
{
 int width = 0;
 const char *orig = string;

 if (len == -1)
  len = strlen(string);
 while (string && string < orig + len) {
  int skip;
  while (skip_ansi &&
         (skip = display_mode_esc_sequence_len(string)) != 0)
   string += skip;
  width += utf8_width(&string, ((void*)0));
 }
 return string ? width : len;
}
