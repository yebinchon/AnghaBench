
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long HASH_MUL ;

long long dl_strhash (const char *s) {
  unsigned long long h = 0;

  while (*s) {
    h = h * HASH_MUL + (unsigned long long)*s++;
  }

  return (long long)h;
}
