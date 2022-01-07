
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ws_status ;
typedef TYPE_1__* rpc_t ;
typedef TYPE_2__* iwdp_iws_t ;
typedef TYPE_3__* iwdp_iwi_t ;
typedef TYPE_4__* iwdp_iport_t ;
typedef TYPE_5__* iwdp_ipage_t ;
struct TYPE_13__ {char* sender_id; TYPE_2__* iws; int page_id; int app_id; int connection_id; } ;
struct TYPE_12__ {TYPE_3__* iwi; int ws_id_to_iws; } ;
struct TYPE_11__ {scalar_t__ connection_id; TYPE_1__* rpc; } ;
struct TYPE_10__ {scalar_t__ page_num; TYPE_5__* ipage; TYPE_4__* iport; } ;
struct TYPE_9__ {int (* send_forwardDidClose ) (TYPE_1__*,scalar_t__,int ,int ,char*) ;} ;


 int WS_ERROR ;
 int WS_SUCCESS ;
 int free (char*) ;
 TYPE_2__* ht_get_value (int ,char*) ;
 int strcmp (int ,scalar_t__) ;
 int stub1 (TYPE_1__*,scalar_t__,int ,int ,char*) ;

ws_status iwdp_stop_devtools(iwdp_ipage_t ipage) {
  iwdp_iws_t iws = ipage->iws;
  if (!iws) {
    return WS_SUCCESS;
  }
  if (iws->ipage != ipage) {
    return WS_ERROR;
  }
  char *sender_id = ipage->sender_id;
  if (!sender_id) {
    return WS_ERROR;
  }
  iwdp_iport_t iport = iws->iport;
  iwdp_iws_t iws2 = ht_get_value(iport->ws_id_to_iws, sender_id);
  if (iws != iws2) {
    return WS_ERROR;
  }
  iwdp_iwi_t iwi = iport->iwi;
  if (iwi && iwi->connection_id && (!ipage->connection_id ||
        !strcmp(ipage->connection_id, iwi->connection_id))) {


    rpc_t rpc = iwi->rpc;
    rpc->send_forwardDidClose(rpc,
        iwi->connection_id, ipage->app_id,
        ipage->page_id, ipage->sender_id);
  }

  iws->ipage = ((void*)0);
  iws->page_num = 0;
  ipage->iws = ((void*)0);
  ipage->sender_id = ((void*)0);
  free(sender_id);
  return WS_SUCCESS;
}
