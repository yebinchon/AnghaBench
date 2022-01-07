
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;

long long my_atoll (const char *s) {
  assert (s);
  int sign = 0;
  if (*s == '-') {
    s ++;
    sign = 1;
  }
  long long r = 0;
  while (*s && *s >= '0' && *s <= '9') {
    r = r * 10 + *(s ++) - '0';
  }
  return sign ? -r : r;
}
