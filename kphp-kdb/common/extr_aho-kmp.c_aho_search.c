
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* KA ;
 int* KB ;
 int KN ;
 char* KS ;

int aho_search (char *str) {
  int q = 1, m = 0;
  char t;

  while ((t = *str) != 0) {
    while (t != KS[q]) {
      q = KA[q];
      if (!q) {
        break;
      }
    }
    m |= KB[++q];
    ++str;
  }
  return m == (1 << KN) - 1;

}
