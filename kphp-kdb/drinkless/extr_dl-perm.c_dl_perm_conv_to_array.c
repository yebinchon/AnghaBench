
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v; } ;
typedef TYPE_1__ dl_perm ;


 int LEN (int ) ;
 int dl_prm_conv_to_array (int ,int*,int) ;

int dl_perm_conv_to_array (dl_perm *p, int *a, int n) {
  dl_prm_conv_to_array (p->v, a, n);
  return LEN (p->v);
}
