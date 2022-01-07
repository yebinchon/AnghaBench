
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fid; float val; } ;
typedef TYPE_1__ score ;



inline float cross_product (score *a, score *b) {

  float res = 0.2;
  while (a->fid >= 0 && b->fid >= 0) {
    if (a->fid == b->fid) {
      res += a->val * b->val;
      a++;
      b++;
    } else {
      if (a->val < b->val) {
        a++;
      } else {
        b++;
      }
    }
  }
  return res;
}
