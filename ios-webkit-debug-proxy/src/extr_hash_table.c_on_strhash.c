
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ht_t ;



intptr_t on_strhash(ht_t ht, const void *key) {
  int hc = 0;
  char *s = (char *)key;
  if (s) {
    int ch;
    while ((ch = *s++)) {
      hc = ((hc << 5) + hc) ^ ch;
    }
  }
  return hc;
}
