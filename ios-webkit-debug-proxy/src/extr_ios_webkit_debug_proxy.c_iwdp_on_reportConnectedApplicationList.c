
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef TYPE_2__* rpc_app_t ;
typedef TYPE_3__* iwdp_iwi_t ;
typedef int ht_t ;
struct TYPE_12__ {int connected; int iport; int app_id_to_true; } ;
struct TYPE_11__ {int app_id; } ;
struct TYPE_10__ {int state; } ;


 int RPC_SUCCESS ;
 int free (char**) ;
 scalar_t__ ht_keys (int ) ;
 int iwdp_add_app_id (TYPE_1__*,int ) ;
 int iwdp_log_connect (int ) ;
 int iwdp_remove_app_id (TYPE_1__*,char*) ;
 int rpc_set_app (TYPE_1__*,TYPE_2__* const) ;
 scalar_t__ strcmp (int ,char*) ;

rpc_status iwdp_on_reportConnectedApplicationList(rpc_t rpc, const rpc_app_t *apps) {
  iwdp_iwi_t iwi = (iwdp_iwi_t)rpc->state;
  ht_t app_id_ht = iwi->app_id_to_true;


  if (!iwi->connected) {
    iwi->connected = 1;
    iwdp_log_connect(iwi->iport);
  }

  if (*apps == ((void*)0)) {
    return RPC_SUCCESS;
  }


  char **old_app_ids = (char **)ht_keys(app_id_ht);
  char **oa;
  for (oa = old_app_ids; *oa; oa++) {
    const rpc_app_t *a;
    for (a = apps; *a && strcmp((*a)->app_id, *oa); a++) {
    }
    if (!*a) {
      iwdp_remove_app_id(rpc, *oa);
    }
  }
  free(old_app_ids);


  const rpc_app_t *a;
  for (a = apps; *a; a++) {
    rpc_set_app(rpc, *a);
    iwdp_add_app_id(rpc, (*a)->app_id);
  }
  return RPC_SUCCESS;
}
