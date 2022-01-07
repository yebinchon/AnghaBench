
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * dl_prm_ptr ;
struct TYPE_3__ {int len; int * v; int rv; } ;
typedef TYPE_1__ dl_perm ;


 int LEN (int *) ;
 int dl_prm_extract (int *,int **,int **,int **,int) ;
 int dl_prm_merge (int **,int *,int *,int *) ;
 int dl_prm_split_node (int *,int **,int **,int,int *) ;

int dl_perm_move (dl_perm *pp, int i, int j) {
  if (!(0 <= i && i < pp->len)) {
    return -1;
  }
  if (!(0 <= j && j < pp->len)) {
    return -1;
  }
  if (i == j) {
    return 0;
  }



  dl_prm_ptr p[10] = {((void*)0)}, add;
  dl_prm_extract (pp->v, &p[5], &p[8], &p[6], i);
  i -= LEN(p[5]);



  dl_prm_split_node (p[6], &p[6], &add, i, &pp->rv);
  dl_prm_split_node (add, &add, &p[7], 1, &pp->rv);

  int s;
  for (s = 0; s <= 3; s++) {
    int xn = LEN(p[s + 5]);
    if (j < xn) {
      dl_prm_extract (p[s + 5], &p[s], &p[s + 4], &p[s + 1], j);
      p[s + 5] = ((void*)0);
      j -= LEN(p[s]);
      dl_prm_split_node (p[s + 1], &p[s + 1], &p[s + 3], j, &pp->rv);
      p[s + 2] = add;
      add = ((void*)0);
      break;
    } else {
      j -= xn;
      p[s] = p[s + 5];
      p[s + 5] = ((void*)0);
    }
  }
  p[9] = add;






  for (s = 0; s < 9; s++) {
    dl_prm_merge (&p[s + 1], p[s], p[s + 1], &pp->rv);
  }

  pp->v = p[9];

  return 0;
}
