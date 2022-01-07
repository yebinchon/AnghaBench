
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* iwdp_t ;
typedef TYPE_2__* iwdp_private_t ;
typedef TYPE_3__* iwdp_iport_t ;
typedef TYPE_4__* iwdp_idl_t ;
typedef TYPE_5__* dl_t ;
typedef int dl_status ;
struct TYPE_12__ {int state; } ;
struct TYPE_11__ {TYPE_1__* self; } ;
struct TYPE_10__ {scalar_t__ s_fd; } ;
struct TYPE_9__ {int device_id_to_iport; } ;
struct TYPE_8__ {int (* remove_fd ) (TYPE_1__*,scalar_t__) ;TYPE_2__* private_state; } ;


 int IWDP_SUCCESS ;
 int ht_get_value (int ,char const*) ;
 int stub1 (TYPE_1__*,scalar_t__) ;

dl_status iwdp_on_detach(dl_t dl, const char *device_id, int device_num) {
  iwdp_idl_t idl = (iwdp_idl_t)dl->state;
  iwdp_t self = idl->self;
  iwdp_private_t my = self->private_state;
  iwdp_iport_t iport = (iwdp_iport_t)ht_get_value(my->device_id_to_iport,
      device_id);
  if (iport && iport->s_fd > 0) {
    self->remove_fd(self, iport->s_fd);
  }
  return IWDP_SUCCESS;
}
