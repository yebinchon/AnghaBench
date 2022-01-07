
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* wi_t ;
struct iwdp_iwi_struct {int dummy; } ;
typedef TYPE_3__* rpc_t ;
typedef TYPE_4__* iwdp_iwi_t ;
struct TYPE_10__ {int type; } ;
struct TYPE_13__ {TYPE_2__* wi; TYPE_3__* rpc; void* app_id_to_true; void* page_num_to_ipage; TYPE_1__ type; } ;
struct TYPE_12__ {TYPE_4__* state; int send_plist; int on_applicationUpdated; int on_applicationSentData; int on_applicationSentListing; int on_applicationDisconnected; int on_applicationConnected; int on_reportConnectedApplicationList; int on_reportSetup; } ;
struct TYPE_11__ {int* is_debug; TYPE_4__* state; int recv_plist; int send_packet; } ;


 int HT_INT_KEYS ;
 int HT_STRING_KEYS ;
 int TYPE_IWI ;
 void* ht_new (int ) ;
 int iwdp_iwi_free (TYPE_4__*) ;
 int iwdp_on_applicationConnected ;
 int iwdp_on_applicationDisconnected ;
 int iwdp_on_applicationSentData ;
 int iwdp_on_applicationSentListing ;
 int iwdp_on_applicationUpdated ;
 int iwdp_on_reportConnectedApplicationList ;
 int iwdp_on_reportSetup ;
 int iwdp_recv_plist ;
 int iwdp_send_packet ;
 int iwdp_send_plist ;
 int malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 TYPE_3__* rpc_new () ;
 TYPE_2__* wi_new (int) ;

iwdp_iwi_t iwdp_iwi_new(bool partials_supported, bool *is_debug) {
  iwdp_iwi_t iwi = (iwdp_iwi_t)malloc(sizeof(struct iwdp_iwi_struct));
  if (!iwi) {
    return ((void*)0);
  }
  memset(iwi, 0, sizeof(struct iwdp_iwi_struct));
  iwi->type.type = TYPE_IWI;
  iwi->app_id_to_true = ht_new(HT_STRING_KEYS);
  iwi->page_num_to_ipage = ht_new(HT_INT_KEYS);
  rpc_t rpc = rpc_new();
  wi_t wi = wi_new(partials_supported);
  if (!rpc || !wi || !iwi->page_num_to_ipage || !iwi->app_id_to_true) {
    iwdp_iwi_free(iwi);
    return ((void*)0);
  }
  rpc->on_reportSetup = iwdp_on_reportSetup;
  rpc->on_reportConnectedApplicationList =
    iwdp_on_reportConnectedApplicationList;
  rpc->on_applicationConnected = iwdp_on_applicationConnected;
  rpc->on_applicationDisconnected = iwdp_on_applicationDisconnected;
  rpc->on_applicationSentListing = iwdp_on_applicationSentListing;
  rpc->on_applicationSentData = iwdp_on_applicationSentData;
  rpc->on_applicationUpdated = iwdp_on_applicationUpdated;
  rpc->send_plist = iwdp_send_plist;
  rpc->state = iwi;
  iwi->rpc = rpc;
  wi->send_packet = iwdp_send_packet;
  wi->recv_plist = iwdp_recv_plist;
  wi->state = iwi;
  wi->is_debug = is_debug;
  iwi->wi = wi;
  return iwi;
}
