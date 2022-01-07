
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_t ;


 int * Q ;
 int* Qc ;
 int** Ql ;
 int Qw ;
 int cur_user ;
 int lookup_list (int ,int**) ;

__attribute__((used)) static int prefetch_search_lists (void) {
  int i, j, cnt;
  hash_t h;
  int *L = 0;

  if (!cur_user) {
    for (i = 0; i < Qw; i++) {
      Qc[i] = 0;
    }
    return Qw;
  }

  for (i = 0; i < Qw; i++) {
    h = Q[i];
    cnt = lookup_list (h, &L);
    j = i;
    while (j && Qc[j-1] > cnt) {
      Q[j] = Q[j-1]; Qc[j] = Qc[j-1]; Ql[j] = Ql[j-1];
      j--;
    }
    Q[j] = h; Qc[j] = cnt; Ql[j] = L;
  }
  return Qw;
}
