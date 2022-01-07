
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long long get_hash (const char *s, int sn) {
  long long h = 239;
  int i;

  for (i = 0; i < sn; i++) {
    h = h * 999983 + s[i];
  }

  return h;
}
