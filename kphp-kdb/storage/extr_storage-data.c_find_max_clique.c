
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rec_max_clique (int,int*,int ,int ,int ,int*,int*) ;

int find_max_clique (int n, int *a) {
  int res = 0, best = -1;
  rec_max_clique (n, a, 0, 0, 0, &res, &best);
  return best;
}
