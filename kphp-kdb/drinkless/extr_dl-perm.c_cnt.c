
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_3__ {struct TYPE_3__* r; struct TYPE_3__* l; } ;



int cnt (dl_prm_ptr p) {
  if (p) {
    return 1 + cnt (p->l) + cnt (p->r);
  }
  return 0;
}
