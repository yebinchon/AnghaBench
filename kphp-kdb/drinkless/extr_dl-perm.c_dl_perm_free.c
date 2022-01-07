
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v; } ;
typedef TYPE_1__ dl_perm ;


 int dl_prm_free (int ) ;

void dl_perm_free (dl_perm *p) {
  dl_prm_free (p->v);
}
