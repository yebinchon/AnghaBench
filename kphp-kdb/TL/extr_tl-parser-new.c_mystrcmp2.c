
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char const*,int) ;

int mystrcmp2 (const char *b, int len, const char *a) {
  int c = strncmp (b, a, len);
  return c ? a[len] ? -1 : 0 : c;
}
