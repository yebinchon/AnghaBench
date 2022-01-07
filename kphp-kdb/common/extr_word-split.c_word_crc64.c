
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long crc64 (char const*,int) ;
 int strlen (char const*) ;

unsigned long long word_crc64 (const char *str, int len) {
  if (len < 0) {
    len = strlen (str);
  }
  return crc64 (str, len);
}
