
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct iwdp_struct {int dummy; } ;
struct iwdp_private {int dummy; } ;
typedef TYPE_1__* iwdp_t ;
typedef TYPE_1__* iwdp_private_t ;
struct TYPE_6__ {struct TYPE_6__* sim_wi_socket_addr; struct TYPE_6__* frontend; int device_id_to_iport; struct TYPE_6__* private_state; } ;


 int free (TYPE_1__*) ;
 int ht_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void iwdp_free(iwdp_t self) {
  if (self) {
    iwdp_private_t my = self->private_state;
    if (my) {
      ht_free(my->device_id_to_iport);
      free(my->frontend);
      free(my->sim_wi_socket_addr);
      memset(my, 0, sizeof(struct iwdp_private));
      free(my);
    }
    memset(self, 0, sizeof(struct iwdp_struct));
    free(self);
  }
}
