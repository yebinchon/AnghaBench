
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ get_format_by_sig (char const*) ;
 char* memchr (char const*,char,size_t) ;

size_t parse_signature(const char *buf, size_t size)
{
 size_t len = 0;
 size_t match = size;
 while (len < size) {
  const char *eol;

  if (get_format_by_sig(buf + len))
   match = len;

  eol = memchr(buf + len, '\n', size - len);
  len += eol ? eol - (buf + len) + 1 : size - len;
 }
 return match;
}
