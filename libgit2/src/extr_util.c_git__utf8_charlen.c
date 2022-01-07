
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t* utf8proc_utf8class ;

int git__utf8_charlen(const uint8_t *str, size_t str_len)
{
 size_t length, i;

 length = utf8proc_utf8class[str[0]];
 if (!length)
  return -1;

 if (str_len > 0 && length > str_len)
  return -1;

 for (i = 1; i < length; i++) {
  if ((str[i] & 0xC0) != 0x80)
   return -1;
 }

 return (int)length;
}
