
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* iwdp_t ;
typedef int iwdp_status ;
typedef TYPE_2__* iwdp_iws_t ;
typedef TYPE_3__* iwdp_iport_t ;
struct TYPE_11__ {int ws_id_to_iws; } ;
struct TYPE_10__ {int ws_fd; int ws_id; TYPE_3__* iport; } ;
struct TYPE_9__ {int is_debug; } ;


 int IWDP_SUCCESS ;
 int ht_put (int ,int ,TYPE_2__*) ;
 TYPE_2__* iwdp_iws_new (int ) ;
 int rpc_new_uuid (int *) ;

iwdp_status iwdp_iport_accept(iwdp_t self, iwdp_iport_t iport, int ws_fd,
    iwdp_iws_t *to_iws) {
  iwdp_iws_t iws = iwdp_iws_new(self->is_debug);
  iws->iport = iport;
  iws->ws_fd = ws_fd;
  rpc_new_uuid(&iws->ws_id);
  ht_put(iport->ws_id_to_iws, iws->ws_id, iws);
  *to_iws = iws;
  return IWDP_SUCCESS;
}
