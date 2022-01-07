
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_t ;


 int assert (int) ;
 int tree_merge_array (int *,int*,int,int**,int*,int,int ) ;

int tree_merge_arr (tree_t *T, int *a1, int l1, int **a2, int *l2, int cur_day) {
  int r = tree_merge_array (T, a1, l1, a2, l2, cur_day, 0);
  while (*l2) {
    assert (r < l1);
    a1[2 * r + 0] = (*a2)[0];
    a1[2 * r + 1] = (*a2)[1];
    (*l2)--;
    (*a2)+=2;
    r++;
  }
  return r;
}
