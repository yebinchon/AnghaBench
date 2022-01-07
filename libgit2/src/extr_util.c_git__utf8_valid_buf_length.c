
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int git__utf8_charlen (int const*,size_t) ;

size_t git__utf8_valid_buf_length(const uint8_t *str, size_t str_len)
{
 size_t offset = 0;

 while (offset < str_len) {
  int length = git__utf8_charlen(str + offset, str_len - offset);

  if (length < 0)
   break;

  offset += length;
 }

 return offset;
}
