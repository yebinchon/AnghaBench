
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int object_id_t ;
struct TYPE_3__ {int N; int * IA; int DA; } ;
typedef TYPE_1__ listree_t ;


 int OARR_ENTRY (int ,int ) ;
 int assert (int) ;
 scalar_t__ object_id_compare (int ,int ) ;

int find_rpos_indirect (listree_t *LI, object_id_t object_id) {
  int l = -1, r = LI->N, x;


  while (r - l > 1) {
    x = (l + r) / 2;
    if (object_id_compare (object_id, OARR_ENTRY (LI->DA, LI->IA[x])) <= 0) {
      r = x;
    } else {
      l = x;
    }
  }
  assert (r >= 0 && r <= LI->N);
  return LI->N - r;
}
