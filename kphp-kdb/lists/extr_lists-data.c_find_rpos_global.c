
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int N; size_t* IA; scalar_t__* DA; } ;
typedef TYPE_1__ listree_global_t ;
typedef scalar_t__ global_id_t ;


 int assert (int) ;

int find_rpos_global (listree_global_t *LG, global_id_t global_id) {
  int l = -1, r = LG->N, x;


  while (r - l > 1) {
    x = (l + r) / 2;
    if (global_id <= (global_id_t)LG->DA[LG->IA[x]]) {
      r = x;
    } else {
      l = x;
    }
  }
  assert (r >= 0 && r <= LG->N);
  return LG->N - r;
}
