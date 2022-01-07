
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; long long v_fid; } ;
struct TYPE_5__ {int vn; struct TYPE_5__** v; TYPE_1__ tok; } ;
typedef TYPE_2__ node ;


 scalar_t__ t_fid ;

long long mask_tree (node *v) {
  if (v == ((void*)0)) {
    return 0;
  }
  long long res = 0;
  if (v->tok.type == t_fid) {
    if (v->tok.v_fid >= 0) {
      res |= 1ll << v->tok.v_fid;
    }
  }
  int i;
  for (i = 0; i < v->vn; i++) {
    res |= mask_tree (v->v[i]);
  }

  return res;
}
