
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* zzmalloc0 (int) ;

__attribute__((used)) static inline int cnt_incr (int **p, int s, int t) {
  if (s > 0 && s <= t) {
    if (!*p) { *p = zzmalloc0 (t * sizeof(int)); }
    (*p)[s-1]++;
    return s;
  } else {
    return 0;
  }
}
