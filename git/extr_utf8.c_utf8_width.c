
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs_char_t ;


 int git_wcwidth (int ) ;
 int pick_one_utf8_char (char const**,size_t*) ;

int utf8_width(const char **start, size_t *remainder_p)
{
 ucs_char_t ch = pick_one_utf8_char(start, remainder_p);
 if (!*start)
  return 0;
 return git_wcwidth(ch);
}
