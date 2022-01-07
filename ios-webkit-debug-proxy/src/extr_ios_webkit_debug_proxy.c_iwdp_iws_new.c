
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* ws_t ;
struct iwdp_iws_struct {int dummy; } ;
typedef TYPE_3__* iwdp_iws_t ;
struct TYPE_8__ {int type; } ;
struct TYPE_10__ {TYPE_2__* ws; TYPE_1__ type; } ;
struct TYPE_9__ {int* is_debug; TYPE_3__* state; int on_frame; int on_upgrade; int on_http_request; int send_data; } ;


 int TYPE_IWS ;
 int iwdp_iws_free (TYPE_3__*) ;
 int iwdp_on_frame ;
 int iwdp_on_http_request ;
 int iwdp_on_upgrade ;
 int iwdp_send_data ;
 int malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__* ws_new () ;

iwdp_iws_t iwdp_iws_new(bool *is_debug) {
  iwdp_iws_t iws = (iwdp_iws_t)malloc(sizeof(struct iwdp_iws_struct));
  if (!iws) {
    return ((void*)0);
  }
  memset(iws, 0, sizeof(struct iwdp_iws_struct));
  iws->type.type = TYPE_IWS;
  iws->ws = ws_new();
  if (iws->ws) {
    ws_t ws = iws->ws;
    ws->send_data = iwdp_send_data;
    ws->on_http_request = iwdp_on_http_request;
    ws->on_upgrade = iwdp_on_upgrade;
    ws->on_frame = iwdp_on_frame;
    ws->state = iws;
    ws->is_debug = is_debug;
  }

  if (!iws->ws) {
    iwdp_iws_free(iws);
    return ((void*)0);
  }
  return iws;
}
