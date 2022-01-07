
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Q_strncmp (const char *s1, const char *s2, int n) {
 int c1, c2;

 do {
  c1 = *s1++;
  c2 = *s2++;

  if (!n--) {
   return 0;
  }

  if (c1 != c2) {
   return c1 < c2 ? -1 : 1;
  }
 } while (c1);

 return 0;
}
