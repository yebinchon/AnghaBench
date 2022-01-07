
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add (char*) ;

void split (char *s, char **f, int *fn, int limit) {
  int bal = 0;
  int cur = 0;
  int ins = 0;


  *fn = 0;
  if (cur < limit) {f[cur++] = s;} else {*fn = 0; return;};
  while (*s) {
    if (*s == '\'') {
      ins ^= 1;
    } else if (*s == '(') {
      if (!ins) {
        bal++;
      }
    } else if (*s == ')') {
      if (!ins) {
        bal--;
      }
    } else if (*s == ',' && bal == 0 && !ins) {
      *s = 0;
      if (cur < limit) {f[cur++] = s + 1;} else {*fn = 0; return;};
    }
    s++;
  }

  *fn = cur;

}
