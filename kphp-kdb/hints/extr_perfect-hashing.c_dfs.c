
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* di ;
 int* ne ;
 int* st ;
 int* va ;
 int* was ;

int dfs (int v, int p, int d) {
  was[v] = 1;
  di[v] = d;
  int i;
  for (i = st[v]; i != -1; i = ne[i]) {
    if (va[i] != p) {
      if (was[va[i]] || !dfs (va[i], v, d + 1)) {
        return 0;
      }
    }
  }
  return 1;
}
