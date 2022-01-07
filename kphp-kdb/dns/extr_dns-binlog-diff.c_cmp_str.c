
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static int cmp_str (char *a, int la, char *b, int lb) {
  if (la < lb) {
    if (!la) { return -1; }
    return (memcmp (a, b, la) <= 0) ? -1 : 1;
  }
  if (la > lb) {
    if (!lb) { return 1; }
    return (memcmp (a, b, lb) >= 0) ? 1 : -1;
  }
  if (!la) {
    return 0;
  }
  return memcmp (a, b, la);
}
