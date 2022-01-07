
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef TYPE_2__* rpc_t ;
typedef int rpc_status ;
typedef TYPE_3__* iwdp_iws_t ;
typedef TYPE_4__* iwdp_iwi_t ;
typedef TYPE_5__* iwdp_iport_t ;
struct TYPE_13__ {int ws_id_to_iws; } ;
struct TYPE_12__ {TYPE_5__* iport; } ;
struct TYPE_11__ {TYPE_1__* ws; } ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_9__ {int (* send_frame ) (TYPE_1__*,int,int ,int,char const*,size_t const) ;} ;


 int OPCODE_TEXT ;
 int RPC_SUCCESS ;
 TYPE_3__* ht_get_value (int ,char const*) ;
 int stub1 (TYPE_1__*,int,int ,int,char const*,size_t const) ;

rpc_status iwdp_on_applicationSentData(rpc_t rpc,
    const char *app_id, const char *dest_id,
    const char *data, const size_t length) {
  iwdp_iport_t iport = ((iwdp_iwi_t)rpc->state)->iport;
  iwdp_iws_t iws = ht_get_value(iport->ws_id_to_iws, dest_id);
  if (!iws) {
    return RPC_SUCCESS;
  }
  ws_t ws = iws->ws;
  return ws->send_frame(ws,
      1, OPCODE_TEXT, 0,
      data, length);
}
