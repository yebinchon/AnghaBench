
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {TYPE_1__* cmp; } ;
struct TYPE_2__ {int waiting_for; int err; int com; } ;


 int complete (int *) ;

__attribute__((used)) static void vdc_finish(struct vio_driver_state *vio, int err, int waiting_for)
{
 if (vio->cmp &&
     (waiting_for == -1 ||
      vio->cmp->waiting_for == waiting_for)) {
  vio->cmp->err = err;
  complete(&vio->cmp->com);
  vio->cmp = ((void*)0);
 }
}
