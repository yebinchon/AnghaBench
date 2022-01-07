
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int read_long (const char *s, long long *x, int *pos) {
  const char *start = s;

  int mul = 1;
  if (s[0] == '-' || s[0] == '+') {
    if (s[0] == '-') {
      mul = -1;
    }
    s++;
  }

  const char *num_start = s;
  unsigned long long val = 0;
  while ('0' <= *s && *s <= '9') {
    val = val * 10 + (*s++ - '0');
  }

  *x = val * mul;
  *pos = s - start;

  return s > num_start;
}
