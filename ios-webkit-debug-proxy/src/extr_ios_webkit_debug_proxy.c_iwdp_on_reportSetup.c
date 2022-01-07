
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef TYPE_2__* iwdp_iwi_t ;
struct TYPE_5__ {int connected; int iport; } ;
struct TYPE_4__ {int state; } ;


 int RPC_SUCCESS ;
 int iwdp_log_connect (int ) ;

rpc_status iwdp_on_reportSetup(rpc_t rpc) {
  iwdp_iwi_t iwi = (iwdp_iwi_t)rpc->state;
  iwi->connected = 1;
  iwdp_log_connect(iwi->iport);
  return RPC_SUCCESS;
}
