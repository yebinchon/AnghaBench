
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long long get_long (const char **s) {
  long long res = 0;
  while (**s <= '9' && **s >= '0') {
    res = res * 10 + **s - '0';
    (*s)++;
  }
  return res;
}
