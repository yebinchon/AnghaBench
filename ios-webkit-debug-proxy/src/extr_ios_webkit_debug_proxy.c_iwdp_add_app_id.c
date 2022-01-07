
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef TYPE_2__* iwdp_iwi_t ;
typedef int ht_t ;
struct TYPE_6__ {int connection_id; int app_id_to_true; } ;
struct TYPE_5__ {int (* send_forwardGetListing ) (TYPE_1__*,int ,char const*) ;int state; } ;


 int HT_VALUE (int) ;
 int RPC_SUCCESS ;
 scalar_t__ ht_get_value (int ,char const*) ;
 int ht_put (int ,int ,int ) ;
 int strdup (char const*) ;
 int stub1 (TYPE_1__*,int ,char const*) ;

rpc_status iwdp_add_app_id(rpc_t rpc, const char *app_id) {
  iwdp_iwi_t iwi = (iwdp_iwi_t)rpc->state;
  ht_t app_id_ht = iwi->app_id_to_true;
  if (ht_get_value(app_id_ht, app_id)) {
    return RPC_SUCCESS;
  }
  ht_put(app_id_ht, strdup(app_id), HT_VALUE(1));
  return rpc->send_forwardGetListing(rpc, iwi->connection_id, app_id);
}
