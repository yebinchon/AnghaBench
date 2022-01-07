
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v; } ;
typedef TYPE_1__ dl_perm ;


 scalar_t__ LEN (int ) ;
 int dl_prm_slice (int ,int*,int,int) ;
 int max (scalar_t__,int ) ;

int dl_perm_slice (dl_perm *p, int *a, int n, int offset) {
  if (offset < 0) {
    offset = 0;
  }
  dl_prm_slice (p->v, a, n, offset);
  return max (LEN (p->v) - offset, 0);
}
