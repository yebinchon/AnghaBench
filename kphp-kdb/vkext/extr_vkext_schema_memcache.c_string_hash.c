
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned string_hash (const char *s) {
  unsigned h = 0;
  while (*s) {
    h = h * 17 + *s;
    s ++;
  }
  return h;
}
