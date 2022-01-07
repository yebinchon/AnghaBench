
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int object_id_t ;
struct TYPE_3__ {int N; int A; } ;
typedef TYPE_1__ listree_direct_t ;


 int OARR_ENTRY (int ,int) ;
 int assert (int) ;
 scalar_t__ object_id_compare (int ,int ) ;

__attribute__((used)) static int find_rpos_direct (listree_direct_t *LD, object_id_t object_id) {
  int l = -1, r = LD->N, x;


  while (r - l > 1) {
    x = (l + r) / 2;
    if (object_id_compare (object_id, OARR_ENTRY (LD->A, x)) <= 0) {
      r = x;
    } else {
      l = x;
    }
  }
  assert (r >= 0 && r <= LD->N);
  return LD->N - r;
}
