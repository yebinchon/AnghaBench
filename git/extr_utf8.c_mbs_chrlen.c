
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;
 scalar_t__ is_encoding_utf8 (char const*) ;
 int pick_one_utf8_char (char const**,size_t*) ;

int mbs_chrlen(const char **text, size_t *remainder_p, const char *encoding)
{
 int chrlen;
 const char *p = *text;
 size_t r = (remainder_p ? *remainder_p : SIZE_MAX);

 if (r < 1)
  return 0;

 if (is_encoding_utf8(encoding)) {
  pick_one_utf8_char(&p, &r);

  chrlen = p ? (p - *text)
      : 1 ;
 }
 else {




  chrlen = 1;
 }

 *text += chrlen;
 if (remainder_p)
  *remainder_p -= chrlen;

 return chrlen;
}
