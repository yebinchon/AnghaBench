
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dl_prm_ptr ;
struct TYPE_4__ {struct TYPE_4__* r; struct TYPE_4__* l; } ;


 int dl_free_prm (TYPE_1__*) ;

void dl_prm_free (dl_prm_ptr v) {
  if (v == ((void*)0)) {
    return;
  }
  dl_prm_free (v->l);
  dl_prm_free (v->r);
  dl_free_prm (v);
}
