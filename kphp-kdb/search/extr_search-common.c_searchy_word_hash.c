
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long word_hash (char const*,int) ;

unsigned long long searchy_word_hash (const char *str, int len) {
  unsigned long long h = word_hash (str, len);
  h &= 0x7fffffffffffffffULL;
  if (*str != 0x1f) {
    h |= 0x8000000000000000ULL;
  }
  return h;
}
